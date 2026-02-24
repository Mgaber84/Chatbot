#!/usr/bin/env bash
# Install system dependencies and Scrapling for headless browser scraping
set -euo pipefail

# System libraries required by Chromium / Playwright
apt-get update
apt-get install -y \
    libnspr4 \
    libnss3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libdbus-1-3 \
    libxkbcommon0 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxrandr2 \
    libgbm1 \
    libasound2t64 \
    libpango-1.0-0 \
    libcairo2

# Install Scrapling with all extras and download browser binaries
pip install "scrapling[all]"
scrapling install
