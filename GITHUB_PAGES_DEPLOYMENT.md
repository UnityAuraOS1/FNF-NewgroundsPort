# GitHub Pages Deployment Guide

This guide explains how to deploy Friday Night Funkin' to GitHub Pages.

## Quick Setup

### Prerequisites
- Haxe and Lime installed on your system
- The project cloned to your local machine
- GitHub repository set up with Pages enabled

### Option 1: Manual Deployment

1. **Build the game for GitHub Pages:**
   ```bash
   ./build-github-pages.sh
   ```
   Or on Windows:
   ```bash
   lime build html5 -final
   ```

2. **Copy the build output to docs/game/:**
   ```bash
   mkdir -p docs/game
   cp -r export/release/html5/bin/* docs/game/
   ```

3. **Commit and push your changes:**
   ```bash
   git add docs/
   git commit -m "Deploy game build to GitHub Pages"
   git push origin main
   ```

4. **Enable GitHub Pages:**
   - Go to your repository Settings
   - Scroll to "GitHub Pages" section
   - Set Source to "Deploy from a branch"
   - Select "main" branch and "/docs" folder
   - Save

5. **Access your game:**
   - Your game will be available at: `https://yourusername.github.io/FNF-NewgroundsPort/game/`

### Option 2: Automatic Deployment with GitHub Actions

A workflow file has been created to automatically build and deploy on push:

1. **Push to your repository:**
   ```bash
   git push origin main
   ```

2. **Check the Actions tab:**
   - Go to your repository's Actions tab
   - The workflow will build and deploy automatically
   - Once complete, your game is live!

## Important Notes

- The `.nojekyll` file in the `docs/` folder prevents Jekyll from processing special files
- The build outputs to `docs/game/` to keep the landing page separate
- Index.html in `docs/` stays as a landing page with links to the game
- Use `lime build html5 -final` for final/release builds (smaller file size)
- Use `lime build html5` for debug builds (faster compilation)

## Troubleshooting

### Game doesn't load
- Check that browser console for errors (F12)
- Ensure all assets are in `docs/game/assets/`
- Check that paths are relative (no absolute paths)

### Blank page
- Clear browser cache (Ctrl+Shift+Delete)
- Check GitHub Pages is enabled in Settings
- Verify the custom domain is correct (if using one)

### Build fails
- Ensure Haxe and Lime are properly installed
- Try clearing the build cache: `rm -rf export/`
- Update Haxe libraries: `haxelib upgrade`

## Additional Resources

- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [HaxeFlixel Web Deployment](https://haxeflixel.com/documentation/deploy-html5/)
- [Lime Build Documentation](https://lime.openfl.org/docs/command-line/build/)
