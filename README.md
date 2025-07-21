# SwaySMS (Sway Screen Mode Selector)

SwaySMS is one of my scripts that I use to control my screen modes.
It is created based on my personal requirements, but I got some requests to share it from some of my friends.

Since I am not a programmer/developer, there is no promise on any development of the project.
Do drop me a message if you have any suggestions.

## What is inside ?
SwaySMS comes with two scripts.
The first bash script (`display_daemon`) is run in the background and its job is to make sure the laptop screen is enabled whenever there is nothing else connected to it.
The second python script (`screen_mode_selector`) opens a GUI window that let you choose between the three modes: Extension, Mirror, and Clamshell (External screen only).
- **Extension mode.** The external display is put to the right of the main (laptop) screen and workspaces 5--7 are moved to the external output. This is modifiable.
- **Mirror mode.** Mirrors the laptop screen onto the external display with the highest possible resolution that is common for both displays.
- **Clamshell mode.** Simply disable the laptop screen. With the `display_daemon`, the laptop screen automatically wakes up when the external monitor is disconnected.

## Dependencies
Apart from `sway`, you will need `jq` and `tk` from your distro's repo.

## Installation
```
git clone https://github.com/parinchaipunya/swaysms
cd swaysms
./install.sh
```

## Usage
If you want the `display_daemon` to work, please put in your sway config file the following.
```
exec display_daemon
```
The SwaySMS GUI is called from your menu of choice or `screen_mode_selector` from your terminal.

## Related tools
You may use `kanshi` and `wl-mirror` to do similar jobs.
I am just too tired of those and this little tool just seems to be quicker when I plug it to work with an external monitor or when I present on beamers.
