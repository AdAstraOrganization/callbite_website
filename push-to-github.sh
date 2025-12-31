#!/bin/bash

# Push CallBite website to GitHub
# Run this script from the website directory

echo "Initializing git repository..."
git init

echo "Adding all files..."
git add .

echo "Creating initial commit..."
git commit -m "Initial commit: CallBite website with design system, bilingual support, and all pages"

echo "Adding remote repository..."
git remote add origin https://github.com/AdAstraOrganization/callbite_website.git

echo "Setting main branch..."
git branch -M main

echo "Pushing to GitHub..."
git push -u origin main

echo "Done! Your website is now on GitHub."

