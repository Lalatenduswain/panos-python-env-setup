# 🔧 PAN-OS Python Environment Setup

A complete and automated shell script to configure a Python development environment for Palo Alto Networks automation using the `pan-os-python` library. This script ensures a safe, isolated, and secure setup using a Python virtual environment.

📍 GitHub Repo: [https://github.com/Lalatenduswain/panos-python-env-setup](https://github.com/Lalatenduswain/panos-python-env-setup)

---

## 📌 Features

- ✅ Automatic system update and package upgrade
- ✅ Installs all required Python 3 packages
- ✅ Creates and activates a virtual environment (`~/panos-venv`)
- ✅ Installs the official [pan-os-python](https://github.com/PaloAltoNetworks/pan-os-python) SDK
- ✅ Ensures `pip` and `setuptools` are up-to-date
- ✅ Ready to use with PAN-OS firewalls, interfaces, and configuration APIs

---

## 🧰 Prerequisites

Before running the script, ensure the following:

- You are using **Ubuntu/Debian** based OS with `apt` support.
- You have **sudo** privileges.
- Internet connectivity is available (to download packages).
- Python 3 is installed (preferably `python3.8+` or `3.12+`).

Required packages:
- `python3`
- `python3-venv`
- `python3-pip`
- `python3-full`

---

## 📖 Installation Guide

### 1. Clone the Repository

```bash
git clone https://github.com/Lalatenduswain/panos-python-env-setup.git
cd panos-python-env-setup
````

### 2. Make the script executable

```bash
chmod +x setup-panos-env.sh
```

### 3. Run the script

```bash
./setup-panos-env.sh
```

This will:

* Update your system
* Install necessary Python packages
* Create a virtual environment at `~/panos-venv`
* Install the `pan-os-python` SDK inside that environment

### 4. Activate the Virtual Environment

```bash
source ~/panos-venv/bin/activate
```

You can now use the SDK to automate Palo Alto firewall operations.

---

## 🚀 Example Usage

Here's an example of how you can use the `pan-os-python` SDK after activating the environment:

```python
from panos.firewall import Firewall
from panos.network import EthernetInterface

fw = Firewall("192.0.2.1", api_username="your_api_user", api_password="your_api_pass")
eth1 = EthernetInterface("ethernet1/1", mode="layer3")
fw.add(eth1)
eth1.create()
fw.commit()
```

📌 Replace `your_api_user` and `your_api_pass` with valid credentials.

---

## 💖 Support & Donations

If you find this script helpful and would like to support further development or express your appreciation:

* ☕ [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain)
* 📬 Share this repo with others in the cybersecurity and DevOps community.

---

## ❗ Disclaimer | Running the Script

**Author:** [Lalatendu Swain](https://github.com/Lalatenduswain)
**Website:** [https://blog.lalatendu.info/](https://blog.lalatendu.info/)

This script is provided as-is and may require modifications or updates based on your specific environment and requirements.
Use it at your own risk. The author is not responsible for any issues or damages caused by this script.

---

## 🛠️ Support or Contact

Encountering issues or bugs?
Please open an issue at:
👉 [https://github.com/Lalatenduswain/panos-python-env-setup/issues](https://github.com/Lalatenduswain/panos-python-env-setup/issues)

We’re here to help you!
