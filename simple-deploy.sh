#!/bin/bash

# Simple Source Code Deployment to VPS
set -e

# Configuration
VPS_HOST="147.93.86.101"
VPS_USER="root"
VPS_PASSWORD="Ke36@12DHg50"
PROJECT_NAME="ridy-taxi"
DEPLOY_PATH="/var/www/$PROJECT_NAME"
SOURCE_DIR="codecanyon-LC7bQZ6U-ridy-flutter-full-taxi-solution"

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
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

print_step "🚀 Starting source code deployment to VPS..."

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "❌ Source directory $SOURCE_DIR not found!"
    exit 1
fi

print_step "🛠️ Setting up VPS environment..."

# Install basic dependencies on VPS
execute_on_vps "apt-get update"
execute_on_vps "apt-get install -y curl wget git nginx mysql-server redis-server ufw unzip"

# Install Node.js 20.x
print_status "Installing Node.js on VPS..."
execute_on_vps "curl -fsSL https://deb.nodesource.com/setup_20.x | bash -"
execute_on_vps "apt-get install -y nodejs"

# Install PM2 globally
execute_on_vps "npm install -g pm2"

# Install Docker
print_status "Installing Docker on VPS..."
execute_on_vps "curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh"
execute_on_vps "systemctl enable docker && systemctl start docker"

# Install Docker Compose
execute_on_vps "curl -L \"https://github.com/docker/compose/releases/latest/download/docker-compose-\$(uname -s)-\$(uname -m)\" -o /usr/local/bin/docker-compose"
execute_on_vps "chmod +x /usr/local/bin/docker-compose"

print_step "📁 Creating deployment directories..."

# Create deployment directory
execute_on_vps "mkdir -p $DEPLOY_PATH"
execute_on_vps "mkdir -p $DEPLOY_PATH/logs"
execute_on_vps "mkdir -p $DEPLOY_PATH/uploads"

print_step "📤 Uploading source code..."

# Stop any existing services
execute_on_vps "cd $DEPLOY_PATH && docker-compose down || true"
execute_on_vps "pm2 stop all || true"

# Copy source code to VPS
copy_to_vps "$SOURCE_DIR" "$DEPLOY_PATH/"

# Copy deployment configurations
copy_to_vps "docker-compose.production.yml" "$DEPLOY_PATH/docker-compose.yml"
copy_to_vps "nginx.conf" "$DEPLOY_PATH/"
copy_to_vps "config.production.json" "$DEPLOY_PATH/config/"

print_step "🔧 Setting up services on VPS..."

# Configure MySQL
print_status "Configuring MySQL..."
execute_on_vps "systemctl enable mysql && systemctl start mysql"
MYSQL_ROOT_PASSWORD="RidyTaxi2024!"
execute_on_vps "mysql -e \"ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$MYSQL_ROOT_PASSWORD';\" || true"
execute_on_vps "mysql -u root -p$MYSQL_ROOT_PASSWORD -e \"CREATE DATABASE IF NOT EXISTS ridy;\" || true"
execute_on_vps "mysql -u root -p$MYSQL_ROOT_PASSWORD -e \"CREATE USER IF NOT EXISTS 'ridy_user'@'%' IDENTIFIED BY 'RidyUser2024!';\" || true"
execute_on_vps "mysql -u root -p$MYSQL_ROOT_PASSWORD -e \"GRANT ALL PRIVILEGES ON ridy.* TO 'ridy_user'@'%';\" || true"
execute_on_vps "mysql -u root -p$MYSQL_ROOT_PASSWORD -e \"FLUSH PRIVILEGES;\" || true"

# Configure Redis
print_status "Configuring Redis..."
execute_on_vps "systemctl enable redis-server && systemctl start redis-server"

# Configure firewall
print_status "Configuring firewall..."
execute_on_vps "ufw --force enable"
execute_on_vps "ufw allow ssh"
execute_on_vps "ufw allow 80"
execute_on_vps "ufw allow 443"
execute_on_vps "ufw allow 3000"  # Admin API
execute_on_vps "ufw allow 3001"  # Driver API  
execute_on_vps "ufw allow 3002"  # Rider API
execute_on_vps "ufw allow 4200"  # Admin Panel

print_step "📦 Installing dependencies on VPS..."

# Install dependencies on VPS
execute_on_vps "cd $DEPLOY_PATH/$SOURCE_DIR && npm install --legacy-peer-deps"

print_step "🏗️ Building applications on VPS..."

# Build applications on VPS
execute_on_vps "cd $DEPLOY_PATH/$SOURCE_DIR && npx nx build admin-api --prod"
execute_on_vps "cd $DEPLOY_PATH/$SOURCE_DIR && npx nx build driver-api --prod"
execute_on_vps "cd $DEPLOY_PATH/$SOURCE_DIR && npx nx build rider-api --prod"
execute_on_vps "cd $DEPLOY_PATH/$SOURCE_DIR && npx nx build admin-panel --prod"

print_step "🚀 Starting services..."

# Start services with Docker Compose
execute_on_vps "cd $DEPLOY_PATH && docker-compose up -d --build"

print_step "⏳ Waiting for services to start..."
sleep 30

# Check service status
print_status "Checking service status..."
execute_on_vps "cd $DEPLOY_PATH && docker-compose ps"

print_step "🎉 Deployment completed!"

echo ""
echo "=== DEPLOYMENT SUMMARY ==="
echo "🌐 Domain: http://mechili.net"
echo "📱 Admin Panel: http://mechili.net"
echo "🔧 Admin API: http://mechili.net/api/admin"
echo "🚗 Driver API: http://mechili.net/api/driver"
echo "👤 Rider API: http://mechili.net/api/rider"
echo ""
echo "🗄️ Database: MySQL (ridy)"
echo "🔄 Cache: Redis"
echo "🐳 Container Management: Docker Compose"
echo ""
echo "📁 Deployment Path: $DEPLOY_PATH"
echo "📋 Source Code: $DEPLOY_PATH/$SOURCE_DIR"
echo ""
echo "🔧 Management Commands:"
echo "  SSH: ssh root@mechili.net"
echo "  View logs: docker-compose logs -f"
echo "  Restart: docker-compose restart"
echo "  Stop: docker-compose down"
echo "  Start: docker-compose up -d"
echo ""

print_status "✅ Source code deployment completed successfully!"
