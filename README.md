# Linking Client Executables
This binary executable needs to be installed on every server with a crontab you'd like to monitor. 

Please follow these steps to generate the executable (for first-time installation):

```
git clone https://github.com/Project-Sundial/linking-client-executables.git
sudo cp ./linking-client-executables/linux/sundial /usr/local/bin/sundial
chmod +x /usr/local/bin/sundial
sudo rm -rf ./linking-client-executables
```

If you are **updating or redownloading** Sundial, the steps are the same, except you'll need to remove `/usr/local/bin/sundial` (this is step 2 below).

```
git clone https://github.com/Project-Sundial/linking-client-executables.git
sudo rm /usr/local/bin/sundial
sudo cp ./linking-client-executables/linux/sundial /usr/local/bin/sundial
chmod +x /usr/local/bin/sundial
sudo rm -rf ./linking-client-executables
```
