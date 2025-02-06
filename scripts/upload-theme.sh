#!/usr/bin/env bash

CONFIG_FILE=".themeforest_config"
THEME_NAME=""
THEME_DIR=""

# 🛠 Load or Create Config
load_or_create_config() {
    if [[ -f "$CONFIG_FILE" ]]; then
        echo "🔄 Loading existing config..."
        source "$CONFIG_FILE"
    else
        echo "🔧 Creating new configuration..."
        echo "Enter your ThemeForest username:"
        read -r THEMEFOREST_USERNAME

        cat <<EOF > "$CONFIG_FILE"
THEMEFOREST_USERNAME="$THEMEFOREST_USERNAME"
EOF
    fi
}

# 📂 Select Theme Directory
select_theme_directory() {
    echo "📂 Enter the directory of the theme you want to package:"
    read -r THEME_DIR
    if [[ ! -d "$THEME_DIR" || -z "$(ls -A "$THEME_DIR")" ]]; then
        echo "❌ Error: Directory does not exist or is empty."
        exit 1
    fi
    THEME_NAME=$(basename "$THEME_DIR")
    echo "✅ Theme selected: $THEME_NAME"
}

# 🎨 Minify CSS & JavaScript
minify_assets() {
    if ! command -v npx &> /dev/null; then
        echo "❌ Error: Node.js & npx are required. Install them first."
        exit 1
    fi
    echo "🌀 Minifying CSS & JavaScript..."
    find "$THEME_DIR/css" -name "*.css" ! -name "*.min.css" -exec npx clean-css-cli -o {}.min {} \;
    find "$THEME_DIR/js" -name "*.js" ! -name "*.min.js" -exec npx terser {} -o {}.min --compress --mangle \;
    echo "✅ Minification complete."
}

# 📊 Lighthouse Testing
run_lighthouse_test() {
    if ! command -v lighthouse &> /dev/null; then
        echo "❌ Lighthouse CLI not installed. Run 'npm install -g lighthouse'"
        exit 1
    fi
    echo "⚡ Running Lighthouse performance test..."
    npx http-server "$THEME_DIR" --port 8080 & 
    SERVER_PID=$!
    sleep 5
    lighthouse http://localhost:8080 --output=json --output-path="$THEME_DIR/lighthouse-report.json" --only-categories=performance,seo,accessibility
    kill $SERVER_PID
    echo "✅ Lighthouse report saved."
}

# 📦 Create ZIP Package
create_zip_package() {
    if ! command -v zip &> /dev/null; then
        echo "❌ 'zip' command not found! Installing..."
        sudo apt install zip -y || brew install zip
    fi
    echo "📦 Creating ZIP package..."
    zip -r "$THEME_NAME.zip" "$THEME_DIR" \
        --exclude "$THEME_DIR/README.md" \
        --exclude "$THEME_DIR/.git*" \
    echo "✅ Package created: $THEME_NAME.zip"
}

# 🗑 Cleanup Process
cleanup_files() {
    echo "🧹 Cleaning up temporary files..."
    find "$THEME_DIR" -name "*.DS_Store" -delete
    find "$THEME_DIR" -name "Thumbs.db" -delete
    echo "✅ Cleanup complete."
}

# 🚀 Manual Upload Instructions
manual_upload_instructions() {
    echo "📤 Your theme package is ready for upload!"
    echo "🔗 Go to: https://themeforest.net/user/YOUR-USERNAME/portfolio"
    echo "📂 Select '$THEME_NAME.zip' and submit it manually."
    echo "✅ Make sure to fill in all required details before submission."
}

# 🏁 Main Execution
clear
echo "🚀 ThemeForest Packaging Script"
load_or_create_config
select_theme_directory
minify_assets
run_lighthouse_test
cleanup_files
create_zip_package
manual_upload_instructions

echo "🎉 All tasks completed! The theme is packaged and ready for manual submission on ThemeForest."