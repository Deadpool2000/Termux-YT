#!/data/data/com.termux/files/usr/bin/bash

echo -e "Updating default packages\n"
apt update && apt upgrade -y

echo -e "Installing packages\n"
apt install wget python -y

echo -e "Requesting access to storage\n"
termux-setup-storage

echo -e "Installing youtube-dl\n"
pip install youtube-dl

echo -e "Creating Youtube folder\n"
mkdir ~/storage/shared/youtube

echo -e "Creating youtube-dl folder for config\n"
mkdir -p ~/.config/youtube-dl

echo -e "Creating bin folder\n"
mkdir ~/bin

echo -e "Downloading and installing termux-url-opener\n"
wget https://pastebin.com/raw/L1QdBLiu -O ~/bin/termux-url-opener
dos2unix ~/bin/termux-url-opener

echo -e "\n"
echo -e "Installation complete!"
