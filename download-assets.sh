#!/bin/bash
# download-assets.sh
# Run this script from the typolab-site/ directory to download
# all images and PDFs from the existing Squarespace site.
#
# Usage: chmod +x download-assets.sh && ./download-assets.sh

set -e
mkdir -p images zines

echo "=== Downloading images ==="

# About page / lab photos
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1732228858975-DL7K9EFFS1AOPHEB8E13/DSC_0433.JPG" -o images/lab-01.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1732228821233-H1IC1DSSM27BML8B5TWB/DSC_0422.JPG" -o images/lab-02.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1732228840727-Y9GLTJ0T6JZCCDXI11AP/DSC_0430.JPG" -o images/lab-03.jpg

# Project thumbnails
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1732476166506-C6ISX66DZQDZLOL9YX3R/IMG_8927.JPG" -o images/collab-thumb.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1732479922564-P7MAPSQZG1Q7AVP7SX8T/layers_0005_x-3.jpeg.png" -o images/connectthedots-thumb.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1732475969211-5IBF9060F9A5NQWZ6K7G/Screenshot%2B2023-11-14%2Bat%2B7.05.34%E2%80%AFPM.jpg" -o images/wordvectors-thumb.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1732476060215-3X5JG5FZGXO2D1R6EPEB/IMG_4573.jpeg" -o images/clews-thumb.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1732476056316-PACKK97W111PRHTK540G/Screenshot%2B2023-11-13%2Bat%2B5.57.59%E2%80%AFPM.png" -o images/alphabit-thumb.jpg

# Collab Typeface images
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1750368555526-X4ZJO1R3F2LWA9I10TJ0/Screenshot+2025-06-19+at+3.27.24%E2%80%AFPM.png" -o images/collab-01.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1750368553563-9HGM6A968X2AI9RC4XUQ/Screenshot+2025-06-19+at+3.27.12%E2%80%AFPM.png" -o images/collab-02.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1750368581606-WP9KB3OR71A1D9YQ4WY4/IMG_8927.JPG" -o images/collab-03.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1732228821233-H1IC1DSSM27BML8B5TWB/DSC_0422.JPG" -o images/collab-04.jpg

# Connect-the-Dots (thumbnail reused as main)
cp images/connectthedots-thumb.jpg images/connectthedots-01.jpg

# Word Vector Sculptures images
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1732477265203-GYEG2GM29Q6JIE1CMJQM/Screenshot+2024-11-24+at+12.37.54%E2%80%AFPM.png" -o images/wordvectors-01.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1732477264040-OIATBUH88SJEG3GMB3U5/Screenshot+2024-11-24+at+12.38.03%E2%80%AFPM.png" -o images/wordvectors-02.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1732477273120-UBTQONF4CYAK5SO651QH/Screenshot+2024-11-24+at+12.40.01%E2%80%AFPM.png" -o images/wordvectors-03.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1732477275810-GZ534D3N2HR0OIIL8004/Screenshot+2024-11-24+at+12.40.07%E2%80%AFPM.png" -o images/wordvectors-04.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1732477276404-989WD65M9G2WN2LY60CU/Screenshot+2024-11-24+at+12.40.13%E2%80%AFPM.png" -o images/wordvectors-05.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1732477276840-BGPUJBAXXARL2879PXEF/Screenshot%2B2023-11-14%2Bat%2B7.05.34%E2%80%AFPM.jpg" -o images/wordvectors-06.jpg

# Clews images
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/69b85fc4-99af-418b-abb7-b0e05bdf81ef/IMG_4573.jpeg" -o images/clews-01.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/adc9a9a2-59e7-4cab-a7d6-aa26ef2b67d5/IMG_4585.jpeg" -o images/clews-02.jpg

# Alphabit images
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/a2b67c9a-90ea-49a8-b57a-fb2b55cea529/a6e3cf6c3dad3d5b4b97cb1d8261d09c.jpg" -o images/alphabit-01.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/5cc3214b-c942-4f99-b794-8bf524574a10/Screenshot%2B2023-11-13%2Bat%2B5.57.59%E2%80%AFPM.png" -o images/alphabit-02.jpg

# Zine cover thumbnails
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1771263431392-31KYQ4RFX9K9U0RAIM29/Screenshot+2026-02-16+at+10.37.01%E2%80%AFAM.png" -o images/zine-fa2025.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1739995758054-ZLVO9RIYDTB897KYO9FB/ExpTypoZineFA2024.png" -o images/zine-fa2024.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1703706096348-U4IVSP9ON1A3G1CO9RUI/FA2023Zine_Page_01.jpg" -o images/zine-fa2023.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1703712216475-4FT3LPVK3HNNUR1BSIQW/ExperimentalTypographySpring2021_Page_02.jpg" -o images/zine-sp2021.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1703710517418-H3CO1MXHVKUW6E9K2CQA/ExperimentalTypographyFall2020Zine_Page_01.jpg" -o images/zine-fa2022.jpg
curl -sL "https://images.squarespace-cdn.com/content/v1/61e979e5fc30fa6ddbe7a9e7/1703708797891-GYITLS6JPZVFGP8TEOD9/Typography+Fall+2019+Zine_Page_01.jpg" -o images/zine-fa2019.jpg

echo ""
echo "=== Downloading zine PDFs ==="

curl -sL "https://www.typolab.org/s/Fall-2025-Experimental-Typography-Zine.pdf" -o zines/Fall-2025-Experimental-Typography-Zine.pdf
curl -sL "https://www.typolab.org/s/Fall-2024-Experimental-Typography-Zine.pdf" -o zines/Fall-2024-Experimental-Typography-Zine.pdf
curl -sL "https://www.typolab.org/s/ExpTypeFA2023.pdf" -o zines/ExpTypeFA2023.pdf
curl -sL "https://www.typolab.org/s/ExpTypeFA2021.pdf" -o zines/ExpTypeFA2021.pdf
curl -sL "https://www.typolab.org/s/ExpTypeFA2020.pdf" -o zines/ExpTypeFA2020.pdf
curl -sL "https://www.typolab.org/s/ExpTypeFA2019.pdf" -o zines/ExpTypeFA2019.pdf

# Zines linked from courses page (different filenames)
curl -sL "https://www.typolab.org/s/ExperimentaTypographyFA2023Zine.pdf" -o zines/ExperimentaTypographyFA2023Zine.pdf
curl -sL "https://www.typolab.org/s/ExperimentalTypographySpring2021.pdf" -o zines/ExperimentalTypographySpring2021.pdf
curl -sL "https://www.typolab.org/s/ExperimentalTypographyFall2020Zine.pdf" -o zines/ExperimentalTypographyFall2020Zine.pdf
curl -sL "https://www.typolab.org/s/ExperimentalTypographyFA2019Zine.pdf" -o zines/ExperimentalTypographyFA2019Zine.pdf

echo ""
echo "=== Done! ==="
echo "Downloaded images to ./images/"
echo "Downloaded zine PDFs to ./zines/"
echo ""
echo "Check for any 0-byte files (failed downloads):"
find images zines -size 0 -type f
