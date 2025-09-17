#!/bin/bash

echo "🚀 Simple Vercel Deployment"
echo "============================"

# Create index.html as main entry point
cp demo.html index.html

echo "📄 Files ready for deployment:"
echo "✅ index.html (demo page)"
echo "✅ navygreen_gmail/ (Gmail skin)"
echo "✅ navygreen_outlook/ (Outlook skin)"
echo "✅ vercel.json (config)"

echo ""
echo "🔗 Manual deployment options:"
echo ""
echo "Option 1: Drag & Drop to Vercel"
echo "  1. Go to https://vercel.com/new"
echo "  2. Drag this entire folder to the upload area"
echo "  3. Click Deploy"
echo ""
echo "Option 2: GitHub Integration"
echo "  1. Create GitHub repo"
echo "  2. Push this code"
echo "  3. Connect to Vercel"
echo ""
echo "🎯 Result: You'll get a URL like:"
echo "   https://navygreen-roundcube-demo.vercel.app"
echo ""
echo "📧 Perfect for client demo!"