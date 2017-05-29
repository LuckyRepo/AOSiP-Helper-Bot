# AOSiP-Helper-Bot
Shell script to help with syncing, building or initializing AOSiP. Created for lazy people who build on Linux.

Getting Started
---------------
To install, change to your build directory for AOSiP, then enter the following
```bash
git clone https://github.com/airwa1kin7/AOSiP-Helper-Bot
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

Updating Script (Manually)
---------------

Because we cloned the bot we need to get funky in order to update.
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

To Do List
---------------
Create beginners script for a fresh Linux server install.
Add error handling for main helper script.
Create a cleaner menu.
Make a super lazy root folder script for remote build servers to save time on typing long build paths.

Bugs
---------------
You tell me.
