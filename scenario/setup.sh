#!/bin/bash
echo "Running setup.sh"

# Check and install python3-venv if not already installed
if ! dpkg -l | grep -q python3-venv; then
    sudo apt update && sudo apt install -y python3-venv
fi

# Create and activate a virtual environment
python3 -m venv myenv
source myenv/bin/activate

# Install necessary Python packages
pip install wheel setuptools

echo "setup.sh completed"
