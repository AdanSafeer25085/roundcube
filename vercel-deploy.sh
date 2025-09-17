#!/bin/bash

echo "🚀 Deploying NavyGreen Skins to Vercel"
echo "======================================"

# Check if Node.js is available
if ! command -v npm &> /dev/null; then
    echo "❌ Node.js not found. Installing..."
    # For macOS with Homebrew
    if command -v brew &> /dev/null; then
        brew install node
    else
        echo "Please install Node.js from https://nodejs.org/"
        exit 1
    fi
fi

# Install Vercel CLI
echo "📦 Installing Vercel CLI..."
npm install -g vercel

echo ""
echo "🔐 Setting up Vercel..."
echo "1. Go to https://vercel.com"
echo "2. Sign up with GitHub (free)"
echo "3. Come back here and press Enter"
echo ""
read -p "Press Enter after signing up with Vercel..."

# Login to Vercel
vercel login

# Create vercel.json for configuration
echo "📝 Creating Vercel configuration..."
cat > vercel.json << 'EOF'
{
  "version": 2,
  "name": "navygreen-roundcube-demo",
  "builds": [
    {
      "src": "docker-compose.yml",
      "use": "@vercel/static-build"
    }
  ],
  "routes": [
    {
      "src": "/(.*)",
      "dest": "/demo.html"
    }
  ]
}
EOF

# Deploy to Vercel
echo "📡 Deploying to Vercel..."
vercel --prod

# Get the deployment URL
echo ""
echo "🎉 VERCEL DEPLOYMENT COMPLETE!"
echo "=============================="
echo ""
echo "✅ Your NavyGreen Roundcube skins demo is live!"
echo ""
echo "📧 Check your Vercel dashboard for the URL:"
echo "   https://vercel.com/dashboard"
echo ""
echo "🔗 Your demo URL will be something like:"
echo "   https://navygreen-roundcube-demo.vercel.app"
echo ""
echo "🎨 What your client can see:"
echo "   • Visual preview of both skins"
echo "   • Feature comparison"
echo "   • Mobile responsive demo"
echo "   • Professional presentation"
echo ""
echo "📱 Perfect for client review and approval!"