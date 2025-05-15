#!/bin/bash

set -e  # Exit immediately if a command fails

echo "[+] Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "[+] Installing required Python packages..."
sudo apt install -y python3 python3-venv python3-pip python3-full

echo "[+] Creating virtual environment in ~/panos-venv..."
python3 -m venv ~/panos-venv

echo "[+] Activating virtual environment and installing pan-os-python..."
source ~/panos-venv/bin/activate
pip install --upgrade pip setuptools
pip install pan-os-python

echo "[+] All set!"
echo "To activate the environment later, run:"
echo "source ~/panos-venv/bin/activate"
