# osxSetupScripts
This repository consists of two scripts that I use as one of the steps in setting up a new OS X 10.10 (Yosemite) laptop. They contain commands for setting preferences that are not available through the standard System Preferences interface.

Since my day-to-day account is a standard user, I split the commands into two groups, `userCommands.sh` and `adminCommands.sh`. The user commands can be run without `sudo` and work on the current account while the admin commands require elevated priveledges and make changes to the entire computer.

Please read through these scripts and edit them to your liking before executing them! They are well-commented with the changes that will be made but, once they are run, they will not ask for futher confirmation of their actions. The scripts were tested only on OS X 10.10 and are not guaranteed to work on any other versions of OS X, or even on this one!

Many of the commands are copied from Mathias Bynens' excellent `.osx` which can be found [here](https://github.com/mathiasbynens/dotfiles/blob/master/.osx).

## `userCommands.sh`
Usage: `./userCommands.sh`

This script contains only settings that can be changed without the use of `sudo` and will affect the current user account only.

## `adminCommands.sh`
Usage: `sudo ./adminCommands.sh`

This script contains only settings that cannot be changed without the use of `sudo`. It will affect the defaults of the entire computer.
