#!/bin/bash
# Build script for GitHub Pages deployment
# This script builds the game for HTML5 and outputs it to docs/ for GitHub Pages

echo "Building FNF for GitHub Pages..."
echo "================================"

# Build the game for HTML5 with release settings
lime build html5 -final

if [ $? -eq 0 ]; then
    echo "Build completed successfully!"
    echo "================================"
    echo ""
    echo "Output location: export/release/html5/bin/"
    echo ""
    echo "To deploy to GitHub Pages:"
    echo "1. Copy contents of export/release/html5/bin/ to docs/game/ (create the game folder if needed)"
    echo "2. Commit and push to your repository"
    echo "3. GitHub Pages will serve the site from the docs/ folder"
    echo ""
    echo "Or use: cp -r export/release/html5/bin/* docs/game/"
else
    echo "Build failed!"
    exit 1
fi
