# Transfer executable to bin
sudo rm /usr/local/bin/sundial
sudo mv ./linux/sundial /usr/local/bin/sundial

# Grant read permissions
chmod +x /usr/local/bin/sundial