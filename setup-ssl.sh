#!/bin/bash

# SSL Setup Script for Ridy Taxi Solution
# This script sets up Let's Encrypt SSL certificates

set -e

# Configuration
VPS_HOST="147.93.86.101"
VPS_USER="root"
VPS_PASSWORD="Ke36@12DHg50"
DOMAIN="mechili.net"
EMAIL="admin@mechili.net"  # Change this to your email
DEPLOY_PATH="/var/www/ridy-taxi"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

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
    sshpass -p "$VPS_PASSWORD" ssh -o StrictHostKeyChecking=no "$VPS_USER@$VPS_HOST" "$command"
}

echo "🔒 Setting up SSL certificates for $DOMAIN"
echo "=========================================="

# Install Certbot
print_status "Installing Certbot..."
execute_on_vps "apt-get update && apt-get install -y certbot python3-certbot-nginx"

# Stop nginx temporarily
print_status "Stopping nginx temporarily..."
execute_on_vps "systemctl stop nginx"

# Obtain SSL certificate
print_status "Obtaining SSL certificate..."
execute_on_vps "certbot certonly --standalone -d $DOMAIN --email $EMAIL --agree-tos --non-interactive"

# Create SSL-enabled nginx configuration
print_status "Creating SSL-enabled nginx configuration..."

cat > nginx-ssl.conf << 'EOF'
events {
    worker_connections 1024;
}

http {
    include       /etc/nginx/mime.types;
    default_type  application/octet-stream;

    # Logging
    log_format main '$remote_addr - $remote_user [$time_local] "$request" '
                    '$status $body_bytes_sent "$http_referer" '
                    '"$http_user_agent" "$http_x_forwarded_for"';

    access_log /var/log/nginx/access.log main;
    error_log /var/log/nginx/error.log;

    # Gzip compression
    gzip on;
    gzip_vary on;
    gzip_min_length 1024;
    gzip_proxied any;
    gzip_comp_level 6;
    gzip_types
        text/plain
        text/css
        text/xml
        text/javascript
        application/json
        application/javascript
        application/xml+rss
        application/atom+xml
        image/svg+xml;

    # Rate limiting
    limit_req_zone $binary_remote_addr zone=api:10m rate=10r/s;
    limit_req_zone $binary_remote_addr zone=login:10m rate=1r/s;

    # Upstream servers
    upstream admin_api {
        server 127.0.0.1:3000;
    }

    upstream driver_api {
        server 127.0.0.1:3001;
    }

    upstream rider_api {
        server 127.0.0.1:3002;
    }

    upstream admin_panel {
        server 127.0.0.1:4200;
    }

    # Redirect HTTP to HTTPS
    server {
        listen 80;
        server_name mechili.net www.mechili.net;
        return 301 https://$server_name$request_uri;
    }

    # HTTPS server
    server {
        listen 443 ssl http2;
        server_name mechili.net www.mechili.net;

        # SSL configuration
        ssl_certificate /etc/letsencrypt/live/mechili.net/fullchain.pem;
        ssl_certificate_key /etc/letsencrypt/live/mechili.net/privkey.pem;
        
        # SSL settings
        ssl_protocols TLSv1.2 TLSv1.3;
        ssl_ciphers ECDHE-RSA-AES256-GCM-SHA512:DHE-RSA-AES256-GCM-SHA512:ECDHE-RSA-AES256-GCM-SHA384:DHE-RSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-SHA384;
        ssl_prefer_server_ciphers off;
        ssl_session_cache shared:SSL:10m;
        ssl_session_timeout 10m;

        # Security headers
        add_header Strict-Transport-Security "max-age=31536000; includeSubDomains" always;
        add_header X-Frame-Options "SAMEORIGIN" always;
        add_header X-XSS-Protection "1; mode=block" always;
        add_header X-Content-Type-Options "nosniff" always;
        add_header Referrer-Policy "no-referrer-when-downgrade" always;

        # Admin Panel (Main domain)
        location / {
            proxy_pass http://admin_panel;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
            
            # Handle Angular routing
            try_files $uri $uri/ /index.html;
        }

        # Admin API
        location /api/admin/ {
            limit_req zone=api burst=20 nodelay;
            
            proxy_pass http://admin_api/;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
        }

        # Driver API
        location /api/driver/ {
            limit_req zone=api burst=20 nodelay;
            
            proxy_pass http://driver_api/;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
        }

        # Rider API
        location /api/rider/ {
            limit_req zone=api burst=20 nodelay;
            
            proxy_pass http://rider_api/;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
        }

        # GraphQL endpoints
        location /graphql {
            limit_req zone=api burst=20 nodelay;
            
            proxy_pass http://admin_api/graphql;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
            
            # WebSocket support for subscriptions
            proxy_http_version 1.1;
            proxy_set_header Upgrade $http_upgrade;
            proxy_set_header Connection "upgrade";
        }

        # File uploads
        location /uploads/ {
            alias /var/www/ridy-taxi/uploads/;
            expires 1y;
            add_header Cache-Control "public, immutable";
        }

        # Health check
        location /health {
            access_log off;
            return 200 "healthy\n";
            add_header Content-Type text/plain;
        }
    }
}
EOF

# Copy SSL configuration to VPS
sshpass -p "$VPS_PASSWORD" scp -o StrictHostKeyChecking=no nginx-ssl.conf "$VPS_USER@$VPS_HOST:/etc/nginx/nginx.conf"

# Start nginx
print_status "Starting nginx with SSL configuration..."
execute_on_vps "systemctl start nginx && systemctl enable nginx"

# Set up automatic certificate renewal
print_status "Setting up automatic certificate renewal..."
execute_on_vps "crontab -l | { cat; echo '0 12 * * * /usr/bin/certbot renew --quiet'; } | crontab -"

# Test nginx configuration
print_status "Testing nginx configuration..."
execute_on_vps "nginx -t"

print_status "✅ SSL setup completed!"
echo ""
echo "🔒 SSL Certificate Information:"
echo "   Domain: $DOMAIN"
echo "   Certificate: /etc/letsencrypt/live/$DOMAIN/fullchain.pem"
echo "   Private Key: /etc/letsencrypt/live/$DOMAIN/privkey.pem"
echo "   Auto-renewal: Configured (runs daily at 12:00)"
echo ""
echo "🌐 Your site is now accessible via HTTPS:"
echo "   https://$DOMAIN"
echo ""

# Clean up
rm nginx-ssl.conf

print_status "SSL setup completed successfully!"
