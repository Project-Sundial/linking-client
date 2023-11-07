# Transfer executable to bin
sudo rm /usr/bin/sundial
sudo mv ./linux/sundial /usr/bin/sundial

# Grant read permissions
chmod +x /usr/bin/sundial