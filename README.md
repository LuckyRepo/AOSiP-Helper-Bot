# AOSiP-Helper-Bot
### Shell script to help with syncing, building or initializing AOSiP. 
**Created by lazy people for lazy people who build on Linux.**

Use ~/build/aosip as your build folder. Quick Start will automatically set your build folder to ~/build/aosip for you.

Quick Setup (Experimental)
---------------
```bash
wget https://raw.githubusercontent.com/LuckyRepo/AOSiP-Helper-Bot/test-branch/start.sh
chmod 777 start.sh
./start.sh
```

Getting Started (If quicksetup doesn't work)
---------------
To install, change to your build directory for AOSiP, then enter the following
```bash
git clone https://github.com/LuckyRepo/AOSiP-Helper-Bot
```
This cloned the repo to a folder called "AOSiP-Helper-Bot"
We now should move the script to our build folder to make things easy.
```bash
mv AOSiP-Helper-Bot/aosip.sh $PWD
chmod 777 aosip.sh
```
We should also move the script for updating the Helper Bot while we are here.
```bash
mv AOSiP-Helper-Bot/update_AHS.sh $PWD
chmod 777 update_AHS.sh
```

Changing the permissions on the script is important. If you don't then you won't be able to run the script.

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
./update_AHS.sh
```
This is only grabbing the helper script if changes have been made. Otherwise it let you know everything is up to date.

Super Lazy Open Build Script for AOSiP
---------------
Changing to your build path each time you log on to your build server can be a chore. Let's be even more lazy.
- Launch or Update AOSiP-Helper-Bot from the root directory

```bash
mv AOSiP-Helper-Bot/build.sh /root
cd ~
chmod 777 build.sh
```

You can now use the SLOBS. Now instead of launching from your build directory with aosp.sh and updating with update_AHS.sh you can use the build.sh from your root directory by entering the following.

```bash
./build.sh
```


Updating Script (Manually)
---------------

Because we cloned the bot we need to get funky in order to update manually.
Change to your AOSiP build directory (example "cd ~/build/AOSiP") then type
```bash
cd AOSiP-Helper-Bot
```
This will change the directory to the one you cloned.
```bash
git pull
```
The helper bot will now be updated from Github.
```bash
cd $OLDPWD
mv AOSiP-Helper-Bot/aosip.sh $PWD
```

Bugs
---------------
You tell me.

Supported Ubuntu Versions
---------------
v15.04
v16.04

Unsupported Ubuntu Versions
---------------
v14.xx
