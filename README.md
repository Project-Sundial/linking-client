# Linking Client Executables
Install this binary executable on every server with a crontab you'd like to monitor. The [Monitoring Service](https://github.com/Project-Sundial/monitoring-service) needs to be installed **first** in order to register any remote servers.

Please note that we only currently support servers running **a Linux distribution** and in a VPC.


## Getting Started
For first-time installation, please run this scripts in your terminal to generate the executable:

```
git clone https://github.com/Project-Sundial/linking-client.git
sudo cp ./linking-client/linux/sundial /usr/local/bin/sundial
chmod +x /usr/local/bin/sundial
sudo rm -rf ./linking-client
```
1. `git clone` is used to download the Sundial repository from GitHub to your local machine.

2. `sudo cp` copies the Sundial executable to the `/usr/local/bin directory`, making it accessible system-wide.

3. `chmod +x` grants execute permissions to the Sundial executable, allowing it to be run as a command.

4. `sudo rm -rf` removes the unnecessary files and directories that were cloned from the repository, keeping your system clean.


#### This has configured a daemonized HTTP server as well as the following executable `sundial` scripts:

**User Commands - User shoulde execute from CLI**

| User Commands | Description |
| --- | --- |
| `sundial discover` | Discovers jobs in a machine’s crontab.  |
| `sundial register` | Registers a remote machine with the Monitoring Service.  |

**Service Scripts - Used by the Linking Client**

| Service Scripts | Description |
| --- | --- |
| `sundial update` | Updates a machine’s crontab based on user actions in the Sundial UI (adding, editing, and deleting jobs). |
| `sundial run` | Provides the Monitoring Service with the capability to monitor jobs. |
| `sundial listen` | Executes a listening server as a background process. Listens for any job updates from the Sundial UI. |


****

If you are **updating or redownloading** Sundial, run the below script instead.
The steps are the same, but you'll be removing `/usr/local/bin/sundial` (this is step 2).

```
git clone https://github.com/Project-Sundial/linking-client.git
sudo rm /usr/local/bin/sundial
sudo cp ./linking-client/linux/sundial /usr/local/bin/sundial
chmod +x /usr/local/bin/sundial
sudo rm -rf ./linking-client
```

****

## Register Machines
Once the Linking Client is installed on your server, you'll want to register it.

1. Open the Monitoring Service dashboard.
2. Go to the **Machines** page.
3. Add a new key.
4. Copy/paste the given script on your command line and
   - add `-d` for a **remote machine**
   - OR `-l` for a **local machine** (a machine is local if the Monitoring Service is installed on the same on)

   to the end of the pasted script.
6. Follow any prompts (only applicable with remote machines).

The registered node, including the IP address, should now appear on the **Machines** page.

For more information, please consult [our docs](https://sundial-docs.notion.site/Documentation-30c6f3cb1290473687ef55f8e4142e2e?pvs=4)
