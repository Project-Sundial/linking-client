# Linking Client Executables
This binary executable needs to be installed on every server with a crontab you'd like to monitor. 


If you haven't already, please install the [Monitoring Service](https://github.com/Project-Sundial/server) **first**.


## Getting Started
For first-time installation, please run this scripts in your terminal to generate the executable:

```
git clone https://github.com/Project-Sundial/linking-client-executables.git
sudo cp ./linking-client-executables/linux/sundial /usr/local/bin/sundial
chmod +x /usr/local/bin/sundial
sudo rm -rf ./linking-client-executables
```

Once you've generated the executable, run it on any server that has cron jobs you'd like to monitor.

****

If you are **updating or redownloading** Sundial, run the below script instead.
The steps are the same, but you'll be removing `/usr/local/bin/sundial` (this is step 2).

```
git clone https://github.com/Project-Sundial/linking-client-executables.git
sudo rm /usr/local/bin/sundial
sudo cp ./linking-client-executables/linux/sundial /usr/local/bin/sundial
chmod +x /usr/local/bin/sundial
sudo rm -rf ./linking-client-executables
```

****

## Register Nodes
Once the Linking Client is installed on your server, you'll want to register it.

1. Open the Monitoring Service dashboard.
2. Go to the Machines page.
3. Add a new key.
4. Copy/paste the given script on your command line and
   - add `-d` for a **remote node**
   - OR `-l` for a **local node**

   to the end of the pasted script.
6. Follow any prompts (only applicable with remote nodes).

The registered node, including the IP address, should now appear on the Machines page.

For more information, please consult [our docs](https://sundial-docs.notion.site/Documentation-30c6f3cb1290473687ef55f8e4142e2e?pvs=4)
