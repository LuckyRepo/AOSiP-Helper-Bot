# AOSiP-Helper-Bot
Shell script to help with syncing, building or initializing AOSiP. Created for lazy people who build on Linux.

Getting Started
---------------
To install, change to you build directory for AOSiP
```bash
git clone https://github.com/airwa1kin7/AOSiP-Helper-Bot
```
This cloned the repo to a folder called "AOSiP-Helper-Bot"
We now should move the script to our build folder to make things easy.
```bash
mv AOSiP-Helper-Bot/aosip.sh $PWD
chmod 777 aosip.sh
```

Using The Script
---------------
To use, change to your build directory for AOSiP (example "cd ~/build/AOSiP") then type
```bash
./aosip.sh
```

That's it.

Updating Script (Easy Way)
---------------
```bash
mv AOSiP-Helper-Bot/update_AHS.sh $PWD
chmod 777 update_AHS.sh
./update_AHS.sh
```
This is only grabbing the helper script if changes have been made. Otherwise it will fail to move files until I change how it handles the error.

Updating Script (The old way)
---------------

Because we cloned the bot we need to get funky in order to update.
Change to your AOSiP build directory (example "cd ~/build/AOSiP") then type
```bash
cd AOSiP-Helper-Bot
```
This will change you to the cloned Helper Bot folder.
```bash
git pull
```
The helper bot will now be updated from Github.
```bash
cd $OLDPWD
mv AOSiP-Helper-Bot/aosip.sh $PWD
```
