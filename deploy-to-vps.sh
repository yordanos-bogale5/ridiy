#!/bin/bash

# VPS Deployment Script for Ridy Taxi Solution
# VPS Details: mechili.net (147.93.86.101)

set -e

echo "🚀 Starting deployment to VPS..."

# VPS Configuration
VPS_HOST="147.93.86.101"
VPS_USER="root"
VPS_PASSWORD="Ke36@12DHg50"
PROJECT_NAME="ridy-taxi"
DEPLOY_PATH="/var/www/$PROJECT_NAME"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
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

# Function to execute commands on VPS
execute_on_vps() {
    local command="$1"
    print_status "Executing on VPS: $command"
    sshpass -p "$VPS_PASSWORD" ssh -o StrictHostKeyChecking=no "$VPS_USER@$VPS_HOST" "$command"
}

# Function to copy files to VPS
copy_to_vps() {
    local source="$1"
    local destination="$2"
    print_status "Copying $source to VPS:$destination"
    sshpass -p "$VPS_PASSWORD" scp -o StrictHostKeyChecking=no -r "$source" "$VPS_USER@$VPS_HOST:$destination"
}

# Check if sshpass is installed
if ! command -v sshpass &> /dev/null; then
    print_error "sshpass is required but not installed. Installing..."
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo apt-get update && sudo apt-get install -y sshpass
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install sshpass
    else
        print_error "Please install sshpass manually"
        exit 1
    fi
fi

# Test VPS connection
print_status "Testing VPS connection..."
if execute_on_vps "echo 'Connection successful'"; then
    print_status "✅ VPS connection established"
else
    print_error "❌ Failed to connect to VPS"
    exit 1
fi

# Update system packages
print_status "Updating system packages..."
execute_on_vps "apt-get update && apt-get upgrade -y"

# Install required dependencies
print_status "Installing required dependencies..."
execute_on_vps "apt-get install -y curl wget git nginx mysql-server redis-server pm2 ufw"

# Install Node.js 20.x
print_status "Installing Node.js..."
execute_on_vps "curl -fsSL https://deb.nodesource.com/setup_20.x | bash -"
execute_on_vps "apt-get install -y nodejs"

# Install Docker
print_status "Installing Docker..."
execute_on_vps "curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh"
execute_on_vps "systemctl enable docker && systemctl start docker"

# Install Docker Compose
print_status "Installing Docker Compose..."
execute_on_vps "curl -L \"https://github.com/docker/compose/releases/latest/download/docker-compose-\$(uname -s)-\$(uname -m)\" -o /usr/local/bin/docker-compose"
execute_on_vps "chmod +x /usr/local/bin/docker-compose"

# Create deployment directory
print_status "Creating deployment directory..."
execute_on_vps "mkdir -p $DEPLOY_PATH"
execute_on_vps "mkdir -p $DEPLOY_PATH/logs"
execute_on_vps "mkdir -p $DEPLOY_PATH/uploads"

# Configure MySQL
print_status "Configuring MySQL..."
execute_on_vps "systemctl enable mysql && systemctl start mysql"

# Set MySQL root password and create database
MYSQL_ROOT_PASSWORD="RidyTaxi2024!"
execute_on_vps "mysql -e \"ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$MYSQL_ROOT_PASSWORD';\""
execute_on_vps "mysql -u root -p$MYSQL_ROOT_PASSWORD -e \"CREATE DATABASE IF NOT EXISTS ridy;\""
execute_on_vps "mysql -u root -p$MYSQL_ROOT_PASSWORD -e \"FLUSH PRIVILEGES;\""

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

print_status "✅ VPS environment setup completed!"
print_status "Next: Building and deploying applications..."

echo "VPS Environment Setup Summary:"
echo "- Node.js: Installed"
echo "- MySQL: Installed (Database: ridy, Password: $MYSQL_ROOT_PASSWORD)"
echo "- Redis: Installed and running"
echo "- Docker: Installed"
echo "- Nginx: Installed"
echo "- PM2: Installed"
echo "- Firewall: Configured"
echo ""
echo "Ready for application deployment!"
