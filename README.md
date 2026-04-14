# TYPO Lab Website

Static site for the TYPO Lab at the ATLAS Institute, University of Colorado Boulder.

Pure HTML + CSS. No build tools, no JavaScript frameworks, no dependencies.

## Structure

```
typolab-site/
  index.html            Home
  about.html            About the lab
  projects.html         Project index
  courses.html          Course listings
  equipment.html        Lab equipment
  contact.html          Contact form
  style.css             Shared stylesheet
  projects/
    collab.html         Collab Typeface
    connectthedots.html OCR Connect-the-Dots
    wordvectors.html    Word Vector Sculptures
    clews.html          Clews Collaborative Typeface
    alphabit.html       Alphabits Archival Project
  images/               (download with script)
  zines/                (download with script)
```

## Setup

### 1. Download images and PDFs from Squarespace

Before deploying, you need to pull the image and PDF assets from the
existing Squarespace site. Run the included script:

```bash
cd typolab-site
chmod +x download-assets.sh
./download-assets.sh
```

This downloads all images into `images/` and all zine PDFs into `zines/`.
Check for any 0-byte files at the end (failed downloads) and re-download
manually if needed.

### 2. Contact form setup

The contact page uses [Formspree](https://formspree.io) for form handling
(free for up to 50 submissions/month). To set it up:

1. Create a free account at formspree.io
2. Create a new form
3. Copy your form endpoint ID
4. In `contact.html`, replace `YOUR_FORM_ID` with your actual ID

If you don't need a contact form, you can remove the `<form>` block
from `contact.html` and just keep the email/address.

### 3. Custom domain

You already own typolab.org. To point it at GitHub Pages:

1. In your DNS provider, add a CNAME record:
   `www` -> `YOUR_GITHUB_USERNAME.github.io`
2. Add an A record pointing to GitHub's IPs:
   ```
   185.199.108.153
   185.199.109.153
   185.199.110.153
   185.199.111.153
   ```
3. Create a file called `CNAME` in the repo root containing:
   ```
   www.typolab.org
   ```
4. In the GitHub repo settings under Pages, enter `www.typolab.org`
   as the custom domain and enable "Enforce HTTPS"

## Deploy to GitHub Pages

```bash
cd typolab-site
git init
git add .
git commit -m "Initial commit: TYPO Lab static site"
git branch -M main
git remote add origin git@github.com:YOUR_USERNAME/typolab-site.git
git push -u origin main
```

Then in the GitHub repo:
1. Go to Settings > Pages
2. Under "Source", select "Deploy from a branch"
3. Select `main` branch, `/ (root)` folder
4. Click Save

The site will be live at `https://YOUR_USERNAME.github.io/typolab-site/`
within a few minutes, and at `typolab.org` once DNS propagates.

## Editing

Every page is a standalone HTML file. Edit text directly in the HTML.
To add a new project, copy any file in `projects/` as a template,
update the content, and add a card to `projects.html`.

No build step. No npm. Just files.
