# Deployment Guide - Publishing Your CallBite Website

This guide covers multiple ways to publish your static website to a domain.

## Quick Options (Free & Easy)

### Option 1: Netlify (Recommended - Easiest)

**Steps:**
1. Go to [netlify.com](https://netlify.com) and sign up (free)
2. Drag and drop your website folder onto Netlify's dashboard, OR
3. Connect your GitHub repository (if you have one)
4. Netlify will give you a free subdomain (e.g., `your-site.netlify.app`)
5. To use your own domain:
   - Go to Domain settings in Netlify
   - Add your custom domain
   - Update your domain's DNS records as instructed

**Pros:** Free, automatic HTTPS, easy custom domain setup, continuous deployment

---

### Option 2: Vercel

**Steps:**
1. Go to [vercel.com](https://vercel.com) and sign up (free)
2. Install Vercel CLI: `npm i -g vercel`
3. In your website folder, run: `vercel`
4. Follow the prompts
5. Add custom domain in Vercel dashboard

**Pros:** Free, fast, great for static sites, automatic HTTPS

---

### Option 3: GitHub Pages (Free)

**Steps:**
1. Create a GitHub account if you don't have one
2. Create a new repository
3. Upload your website files to the repository
4. Go to Settings → Pages
5. Select your branch (usually `main`) and folder (`/root`)
6. Your site will be live at `username.github.io/repository-name`
7. For custom domain:
   - Add a `CNAME` file with your domain name
   - Update DNS records

**Pros:** Free, integrated with Git, reliable

---

### Option 4: Cloudflare Pages (Free)

**Steps:**
1. Go to [cloudflare.com](https://cloudflare.com) and sign up
2. Go to Pages → Create a project
3. Upload your website folder
4. Your site will be live immediately
5. Add custom domain in Pages settings

**Pros:** Free, fast CDN, great performance, easy custom domain

---

## Using Your Own Domain

### Step 1: Buy a Domain
- **Recommended providers:** Namecheap, Google Domains, Cloudflare Registrar
- Search for your desired domain (e.g., `callbite.ai`)
- Purchase it

### Step 2: Connect Domain to Hosting

**For Netlify:**
1. In Netlify dashboard → Domain settings
2. Click "Add custom domain"
3. Enter your domain
4. Netlify will show you DNS records to add:
   - Add an A record pointing to Netlify's IP
   - Or add a CNAME record pointing to your Netlify subdomain
5. Wait for DNS propagation (usually 5-60 minutes)

**For Vercel:**
1. In Vercel dashboard → Settings → Domains
2. Add your domain
3. Follow DNS configuration instructions
4. Vercel will provide the records to add

**For GitHub Pages:**
1. Create a file named `CNAME` (no extension) in your repository root
2. Add your domain name inside: `callbite.ai`
3. In your domain registrar, add DNS records:
   - A records pointing to GitHub's IPs:
     - 185.199.108.153
     - 185.199.109.153
     - 185.199.110.153
     - 185.199.111.153
   - Or CNAME record pointing to `username.github.io`

---

## DNS Configuration

### Common DNS Records:

**A Record:**
- Type: A
- Name: @ (or leave blank for root domain)
- Value: IP address provided by hosting service
- TTL: 3600 (or default)

**CNAME Record:**
- Type: CNAME
- Name: @ (or www)
- Value: Your hosting service URL (e.g., `your-site.netlify.app`)
- TTL: 3600

**For www subdomain:**
- Type: CNAME
- Name: www
- Value: Your hosting service URL

---

## Pre-Deployment Checklist

Before deploying, make sure:

- [ ] All images are in the correct folders
- [ ] All file paths are correct (check image sources)
- [ ] Test all pages locally (open index.html in browser)
- [ ] Check that translations.js loads correctly
- [ ] Verify all links work
- [ ] Test language switcher
- [ ] Check mobile responsiveness

---

## Recommended: Netlify (Step-by-Step)

### 1. Prepare Your Files
Make sure all files are in one folder:
```
adastra Website/
├── index.html
├── product.html
├── pricing.html
├── contact.html
├── design-system.css
├── translations.js
├── callbite_logo.png
├── backgroundmain.png
├── whataihandels.png
├── whycallbite.png
└── ui.png
```

### 2. Deploy to Netlify

**Option A: Drag & Drop**
1. Go to [app.netlify.com](https://app.netlify.com)
2. Sign up/login
3. Drag your entire website folder onto the deploy area
4. Wait for deployment (usually 30 seconds)
5. Your site is live!

**Option B: Using Netlify CLI**
```bash
# Install Netlify CLI
npm install -g netlify-cli

# Navigate to your website folder
cd "/Users/sam/Desktop/adastra Website"

# Login to Netlify
netlify login

# Deploy
netlify deploy --prod
```

### 3. Add Custom Domain
1. In Netlify dashboard → Site settings → Domain management
2. Click "Add custom domain"
3. Enter your domain (e.g., `callbite.ai`)
4. Follow DNS instructions
5. Netlify will automatically provision SSL certificate (HTTPS)

---

## Testing Your Deployment

After deploying:

1. **Check all pages:**
   - Home page loads
   - Product page works
   - Pricing page displays correctly
   - Contact form is visible

2. **Test features:**
   - Language switcher (EN/NL)
   - All images load
   - Navigation links work
   - Buttons function correctly

3. **Test on mobile:**
   - Open site on phone
   - Check responsive design
   - Test navigation

---

## Troubleshooting

### Images Not Loading
- Check file paths (case-sensitive on some servers)
- Ensure images are in the same folder or correct relative path
- Check browser console for 404 errors

### Translations Not Working
- Ensure `translations.js` is in the same folder
- Check browser console for JavaScript errors
- Verify file paths in HTML

### Domain Not Working
- Wait 24-48 hours for DNS propagation
- Check DNS records are correct
- Use [whatsmydns.net](https://www.whatsmydns.net) to check propagation

---

## Quick Start Commands

### Deploy with Netlify CLI:
```bash
cd "/Users/sam/Desktop/adastra Website"
npm install -g netlify-cli
netlify login
netlify deploy --prod
```

### Deploy with Vercel CLI:
```bash
cd "/Users/sam/Desktop/adastra Website"
npm install -g vercel
vercel
```

---

## Cost Estimate

- **Domain:** $10-15/year (e.g., callbite.ai)
- **Hosting:** FREE (Netlify, Vercel, GitHub Pages, Cloudflare)
- **SSL Certificate:** FREE (automatic with most services)
- **Total:** ~$10-15/year for domain only

---

## Need Help?

If you encounter issues:
1. Check browser console (F12) for errors
2. Verify all file paths are correct
3. Test locally first before deploying
4. Check hosting service documentation

---

**Recommended:** Start with **Netlify** - it's the easiest and most beginner-friendly option with great free features!

