#!/bin/bash
set -e

# SimPro API Documentation Update Script
# This script downloads the latest SimPro Swagger spec and regenerates documentation

echo "🔄 Starting SimPro API documentation update..."

# Change to project directory
cd "$(dirname "$0")/.."

# Backup existing files
echo "📦 Creating backup..."
if [ -f "swagger.json" ]; then
    cp swagger.json "swagger.json.backup.$(date +%Y%m%d_%H%M%S)"
fi

if [ -f "api-reference/simpro-api.md" ]; then
    cp api-reference/simpro-api.md "api-reference/simpro-api.md.backup.$(date +%Y%m%d_%H%M%S)"
fi

# Download latest Swagger spec
echo "⬇️  Downloading latest Swagger specification..."
curl -L -o swagger.json.new "https://developer.simprogroup.com/apidoc/swagger.zip" 2>/dev/null || {
    echo "❌ Failed to download Swagger spec"
    echo "The download URL may be protected by Cloudflare or changed"
    echo "Please manually download from: https://developer.simprogroup.com/apidoc/swagger.zip"
    exit 1
}

# Check if download was successful (not HTML error page)
if file swagger.json.new | grep -q "HTML"; then
    echo "❌ Download failed - received HTML instead of JSON"
    echo "This likely means Cloudflare protection is blocking the download"
    echo "Please manually download the swagger.zip file and extract swagger.json"
    rm swagger.json.new
    exit 1
fi

# Replace old file
mv swagger.json.new swagger.json
echo "✅ Updated swagger.json ($(du -h swagger.json | cut -f1))"

# Install dependencies if needed
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
fi

# Generate new documentation
echo "🔄 Converting Swagger to Markdown..."
npx widdershins \
    --language_tabs 'shell:Shell' 'javascript:JavaScript' 'python:Python' \
    --outfile api-reference/simpro-api.md \
    swagger.json

echo "✅ Generated new documentation ($(du -h api-reference/simpro-api.md | cut -f1))"

# Update README with timestamp
echo "📝 Updating README..."
sed -i "s/\*\*Last Updated:\*\*.*/\*\*Last Updated:\*\* $(date '+%Y-%m-%d %H:%M:%S %Z')/" README.md

# Git operations (if in git repo)
if [ -d ".git" ]; then
    echo "📝 Committing changes..."
    git add .
    git commit -m "📚 Update SimPro API documentation - $(date '+%Y-%m-%d')" || echo "No changes to commit"
fi

echo "🎉 Documentation update complete!"
echo "📊 Stats:"
echo "   - Swagger JSON: $(du -h swagger.json | cut -f1)"  
echo "   - Markdown docs: $(du -h api-reference/simpro-api.md | cut -f1)"
echo "   - Total size: $(du -sh . | cut -f1)"