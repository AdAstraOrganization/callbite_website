# GitHub Setup Guide - Push Your Website to GitHub

Follow these steps to push your CallBite website to GitHub.

## Step 1: Create a GitHub Repository

1. Go to [github.com](https://github.com) and sign in (or create an account)
2. Click the "+" icon in the top right → "New repository"
3. Repository name: `callbite-website` (or any name you prefer)
4. Description: "CallBite - Restaurant phone line automation website"
5. Choose: **Public** (or Private if you prefer)
6. **DO NOT** initialize with README, .gitignore, or license (we already have files)
7. Click "Create repository"

## Step 2: Open Terminal

Open Terminal on your Mac (Applications → Utilities → Terminal)

## Step 3: Navigate to Your Website Folder

```bash
cd "/Users/sam/Desktop/adastra Website"
```

## Step 4: Initialize Git Repository

```bash
git init
```

## Step 5: Add All Files

```bash
git add .
```

## Step 6: Make Your First Commit

```bash
git commit -m "Initial commit: CallBite website with design system and bilingual support"
```

## Step 7: Add GitHub Remote

Replace `YOUR_USERNAME` with your actual GitHub username:

```bash
git remote add origin https://github.com/YOUR_USERNAME/callbite-website.git
```

Or if you prefer SSH (if you have SSH keys set up):

```bash
git remote add origin git@github.com:YOUR_USERNAME/callbite-website.git
```

## Step 8: Push to GitHub

```bash
git branch -M main
git push -u origin main
```

You'll be prompted for your GitHub username and password (or use a Personal Access Token).

---

## If You Get Authentication Errors

### Option 1: Use Personal Access Token (Recommended)

1. Go to GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Click "Generate new token (classic)"
3. Give it a name: "Website Deployment"
4. Select scopes: Check `repo` (full control of private repositories)
5. Click "Generate token"
6. **Copy the token** (you won't see it again!)
7. When prompted for password, paste the token instead

### Option 2: Use GitHub CLI

```bash
# Install GitHub CLI (if not installed)
brew install gh

# Login
gh auth login

# Then push normally
git push -u origin main
```

---

## Complete Command Sequence

Copy and paste these commands one by one (replace YOUR_USERNAME):

```bash
cd "/Users/sam/Desktop/adastra Website"
git init
git add .
git commit -m "Initial commit: CallBite website with design system and bilingual support"
git remote add origin https://github.com/YOUR_USERNAME/callbite-website.git
git branch -M main
git push -u origin main
```

---

## After Pushing

Once pushed, you can:

1. **View your code on GitHub:** Go to `https://github.com/YOUR_USERNAME/callbite-website`
2. **Deploy to Netlify/Vercel:** Connect your GitHub repo for automatic deployments
3. **Enable GitHub Pages:** Go to repository Settings → Pages → Select branch `main` → Save

---

## Future Updates

When you make changes to your website:

```bash
cd "/Users/sam/Desktop/adastra Website"
git add .
git commit -m "Description of your changes"
git push
```

---

## Troubleshooting

### "Repository not found"
- Check your GitHub username is correct
- Make sure the repository exists on GitHub
- Verify you have access to the repository

### "Authentication failed"
- Use a Personal Access Token instead of password
- Or set up SSH keys for GitHub

### "Permission denied"
- Make sure you're logged into GitHub
- Check repository permissions

---

## Need Help?

If you encounter any issues, check:
- GitHub documentation: https://docs.github.com
- Git documentation: https://git-scm.com/doc

