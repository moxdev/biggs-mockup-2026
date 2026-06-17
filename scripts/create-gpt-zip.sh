#!/bin/bash

set -e

ZIP_FOLDER="gpt-zip"
ZIP_FILE="gpt-zip.zip"

echo "Cleaning old GPT zip files..."
rm -rf "$ZIP_FOLDER" "$ZIP_FILE"

echo "Creating $ZIP_FOLDER folder..."
mkdir -p "$ZIP_FOLDER"

echo "Copying selected project files and folders..."

# Folders
rsync -a assets "$ZIP_FOLDER/"
rsync -a dist "$ZIP_FOLDER/"
rsync -a src "$ZIP_FOLDER/"

# Files
cp index.html "$ZIP_FOLDER/"
cp package-lock.json "$ZIP_FOLDER/"
cp package.json "$ZIP_FOLDER/"
cp playwright.config.js "$ZIP_FOLDER/"
cp README.md "$ZIP_FOLDER/"
cp TESTING.md "$ZIP_FOLDER/"

echo "Compressing $ZIP_FOLDER into $ZIP_FILE..."
zip -r "$ZIP_FILE" "$ZIP_FOLDER" > /dev/null

echo "Done."
echo "Created: $ZIP_FILE"