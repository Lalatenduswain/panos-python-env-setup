#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Step 1: Update system packages
echo "[+] Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Step 2: Install required Python packages
echo "[+] Installing Python tools..."
sudo apt install -y python3-venv python3-pip python3-full

# Step 3: Create virtual environment
echo "[+] Creating virtual environment at ~/panos-venv..."
python3 -m venv ~/panos-venv

# Step 4: Activate virtual environment and install Python libraries
echo "[+] Activating virtual environment and installing dependencies..."
source ~/panos-venv/bin/activate

# Step 5: Upgrade pip and install pan-os-python
pip install --upgrade pip setuptools
pip install pan-os-python

echo "[+] Setup complete. Virtual environment is ready."
echo "Run: source ~/panos-venv/bin/activate to use it."
