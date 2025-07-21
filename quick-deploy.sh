#!/bin/bash

# Quick Deployment Script for Ridy Taxi Solution
# This script will deploy everything to your VPS in one go

set -e

echo "🚀 Ridy Taxi Solution - Quick Deployment to VPS"
echo "================================================"
echo ""

# Check if we're in the right directory
if [ ! -f "deploy-to-vps.sh" ] || [ ! -f "deploy-apps.sh" ]; then
    echo "❌ Please run this script from the directory containing the deployment files"
    exit 1
fi

# Make scripts executable
chmod +x deploy-to-vps.sh
chmod +x deploy-apps.sh

echo "📋 Deployment Plan:"
echo "1. Setup VPS environment (Node.js, MySQL, Redis, Docker, Nginx)"
echo "2. Build and deploy all applications"
echo "3. Configure reverse proxy and services"
echo "4. Run database migrations"
echo "5. Perform health checks"
echo ""

read -p "🤔 Do you want to proceed with the deployment? (y/N): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Deployment cancelled"
    exit 1
fi

echo ""
echo "🔧 Step 1: Setting up VPS environment..."
echo "========================================"
./deploy-to-vps.sh

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ VPS environment setup completed successfully!"
    echo ""
    echo "📦 Step 2: Building and deploying applications..."
    echo "================================================"
    ./deploy-apps.sh
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "🎉 DEPLOYMENT COMPLETED SUCCESSFULLY!"
        echo "===================================="
        echo ""
        echo "🌐 Your Ridy Taxi solution is now live at:"
        echo "   https://mechili.net"
        echo ""
        echo "📱 Access Points:"
        echo "   • Admin Panel: https://mechili.net"
        echo "   • Admin API: https://mechili.net/api/admin"
        echo "   • Driver API: https://mechili.net/api/driver"
        echo "   • Rider API: https://mechili.net/api/rider"
        echo "   • GraphQL Playground: https://mechili.net/graphql"
        echo ""
        echo "🔧 Management:"
        echo "   • SSH: ssh root@mechili.net"
        echo "   • View logs: docker-compose logs -f"
        echo "   • Restart services: docker-compose restart"
        echo ""
        echo "📊 Default Admin Credentials (if seeded):"
        echo "   • Email: admin@ridy.com"
        echo "   • Password: admin123"
        echo ""
        echo "⚠️  Next Steps:"
        echo "   1. Update admin credentials"
        echo "   2. Configure SSL certificate (Let's Encrypt recommended)"
        echo "   3. Set up monitoring and backups"
        echo "   4. Configure Firebase for push notifications"
        echo "   5. Test all functionality"
        echo ""
    else
        echo "❌ Application deployment failed!"
        exit 1
    fi
else
    echo "❌ VPS environment setup failed!"
    exit 1
fi
