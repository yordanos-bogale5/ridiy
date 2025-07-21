#!/bin/bash

# Application Deployment Script for Ridy Taxi Solution
set -e

# Configuration
VPS_HOST="147.93.86.101"
VPS_USER="root"
VPS_PASSWORD="Ke36@12DHg50"
PROJECT_NAME="ridy-taxi"
DEPLOY_PATH="/var/www/$PROJECT_NAME"
SOURCE_DIR="codecanyon-LC7bQZ6U-ridy-flutter-full-taxi-solution"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

print_step() {
    echo -e "${BLUE}[STEP]${NC} $1"
}

# Function to execute commands on VPS
execute_on_vps() {
    local command="$1"
    sshpass -p "$VPS_PASSWORD" ssh -o StrictHostKeyChecking=no "$VPS_USER@$VPS_HOST" "$command"
}

# Function to copy files to VPS
copy_to_vps() {
    local source="$1"
    local destination="$2"
    print_status "Copying $source to VPS:$destination"
    sshpass -p "$VPS_PASSWORD" scp -o StrictHostKeyChecking=no -r "$source" "$VPS_USER@$VPS_HOST:$destination"
}

print_step "🚀 Starting application deployment..."

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    print_error "Source directory $SOURCE_DIR not found!"
    exit 1
fi

# Navigate to source directory
cd "$SOURCE_DIR"

print_step "📦 Installing dependencies..."
npm install

print_step "🔧 Building applications..."

# Build Admin API
print_status "Building Admin API..."
npx nx build admin-api --prod

# Build Driver API
print_status "Building Driver API..."
npx nx build driver-api --prod

# Build Rider API
print_status "Building Rider API..."
npx nx build rider-api --prod

# Build Admin Panel
print_status "Building Admin Panel..."
npx nx build admin-panel --prod

print_step "📁 Preparing deployment files..."

# Create deployment package
cd ..
mkdir -p deployment-package
cp -r "$SOURCE_DIR/dist" deployment-package/
cp -r "$SOURCE_DIR/apps" deployment-package/
cp -r "$SOURCE_DIR/libs" deployment-package/
cp -r "$SOURCE_DIR/config" deployment-package/
cp "$SOURCE_DIR/package.json" deployment-package/
cp "$SOURCE_DIR/package-lock.json" deployment-package/
cp "$SOURCE_DIR/nx.json" deployment-package/
cp "$SOURCE_DIR/tsconfig.base.json" deployment-package/

# Copy deployment configurations
cp docker-compose.production.yml deployment-package/docker-compose.yml
cp nginx.conf deployment-package/
cp config.production.json deployment-package/config/

print_step "🚀 Deploying to VPS..."

# Stop existing services
print_status "Stopping existing services..."
execute_on_vps "cd $DEPLOY_PATH && docker-compose down || true"

# Copy deployment package to VPS
print_status "Copying files to VPS..."
copy_to_vps "deployment-package/*" "$DEPLOY_PATH/"

# Copy additional configuration files
copy_to_vps "nginx.conf" "$DEPLOY_PATH/nginx/"

print_step "🐳 Setting up Docker containers..."

# Create necessary directories on VPS
execute_on_vps "mkdir -p $DEPLOY_PATH/nginx/sites-available"
execute_on_vps "mkdir -p $DEPLOY_PATH/nginx/sites-enabled"
execute_on_vps "mkdir -p $DEPLOY_PATH/ssl"
execute_on_vps "mkdir -p $DEPLOY_PATH/mysql-init"
execute_on_vps "mkdir -p $DEPLOY_PATH/uploads"
execute_on_vps "mkdir -p $DEPLOY_PATH/logs"

# Set proper permissions
execute_on_vps "chown -R www-data:www-data $DEPLOY_PATH/uploads"
execute_on_vps "chmod -R 755 $DEPLOY_PATH/uploads"

# Copy nginx configuration
execute_on_vps "cp $DEPLOY_PATH/nginx.conf $DEPLOY_PATH/nginx/"

print_step "🔄 Starting services with Docker Compose..."

# Start services
execute_on_vps "cd $DEPLOY_PATH && docker-compose up -d --build"

print_step "⏳ Waiting for services to start..."
sleep 30

# Check service status
print_status "Checking service status..."
execute_on_vps "cd $DEPLOY_PATH && docker-compose ps"

print_step "🗄️ Running database migrations..."

# Wait for MySQL to be ready
execute_on_vps "cd $DEPLOY_PATH && docker-compose exec -T mysql mysql -u root -pRidyTaxi2024! -e 'SELECT 1' || sleep 10"

# Run migrations for each API
print_status "Running Admin API migrations..."
execute_on_vps "cd $DEPLOY_PATH && docker-compose exec -T admin-api npm run typeorm migration:run || true"

print_status "Running Driver API migrations..."
execute_on_vps "cd $DEPLOY_PATH && docker-compose exec -T driver-api npm run typeorm migration:run || true"

print_status "Running Rider API migrations..."
execute_on_vps "cd $DEPLOY_PATH && docker-compose exec -T rider-api npm run typeorm migration:run || true"

print_step "🔍 Final health checks..."

# Health check function
check_service() {
    local service_name="$1"
    local port="$2"
    local endpoint="$3"
    
    print_status "Checking $service_name..."
    if execute_on_vps "curl -f http://localhost:$port$endpoint"; then
        print_status "✅ $service_name is healthy"
    else
        print_warning "⚠️ $service_name might not be ready yet"
    fi
}

# Check all services
check_service "Admin API" "3000" "/health"
check_service "Driver API" "3001" "/health"
check_service "Rider API" "3002" "/health"
check_service "Admin Panel" "4200" "/"

print_step "🎉 Deployment completed!"

echo ""
echo "=== DEPLOYMENT SUMMARY ==="
echo "🌐 Domain: https://mechili.net"
echo "📱 Admin Panel: https://mechili.net"
echo "🔧 Admin API: https://mechili.net/api/admin"
echo "🚗 Driver API: https://mechili.net/api/driver"
echo "👤 Rider API: https://mechili.net/api/rider"
echo "📊 GraphQL: https://mechili.net/graphql"
echo ""
echo "🗄️ Database: MySQL (ridy)"
echo "🔄 Cache: Redis"
echo "🐳 Container Management: Docker Compose"
echo ""
echo "📁 Deployment Path: $DEPLOY_PATH"
echo "📋 Logs: $DEPLOY_PATH/logs"
echo "📤 Uploads: $DEPLOY_PATH/uploads"
echo ""
echo "🔧 Management Commands:"
echo "  View logs: ssh root@mechili.net 'cd $DEPLOY_PATH && docker-compose logs -f'"
echo "  Restart: ssh root@mechili.net 'cd $DEPLOY_PATH && docker-compose restart'"
echo "  Stop: ssh root@mechili.net 'cd $DEPLOY_PATH && docker-compose down'"
echo "  Start: ssh root@mechili.net 'cd $DEPLOY_PATH && docker-compose up -d'"
echo ""

# Clean up local deployment package
rm -rf deployment-package

print_status "✅ Deployment script completed successfully!"
