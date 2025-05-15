#!/bin/bash

set -e  # Exit on any error

echo "[+] Step 1: Updating APT package index..."
sudo apt update

echo "[+] Step 2: Preventing firmware updates..."
sudo apt-mark hold linux-firmware fwupd

echo "[+] Step 3: Upgrading system packages (excluding firmware)..."
sudo apt upgrade -y

echo "[+] Step 4: Installing Python environment dependencies..."
sudo apt install -y python3 python3-venv python3-pip python3-full

echo "[+] Step 5: Creating virtual environment at ~/panos-venv..."
python3 -m venv ~/panos-venv

echo "[+] Step 6: Writing Python script to ~/1.py..."
cat << 'EOF' > ~/1.py
from panos.firewall import Firewall
from panos.network import EthernetInterface

fw = Firewall("40.81.226.165", api_username="rout501", api_password="Nation_Cyrax@1122")
eth1 = EthernetInterface("ethernet1/2", mode="layer3")
fw.add(eth1)
eth1.create()
fw.commit()
EOF

echo "[+] Step 7: Activating virtual environment and installing pan-os-python..."
source ~/panos-venv/bin/activate
pip install --upgrade pip setuptools
pip install pan-os-python

echo "[+] Step 8: Running 1.py..."
python ~/1.py

echo "[+] All done. Script executed successfully."
