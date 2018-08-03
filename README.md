# k480_conf
Configuration utility for setting up function keys on ubuntu for Logitech k480 keyboard.

Inspiration came from this place:
<http://www.trial-n-error.de/posts/2012/12/31/logitech-k810-keyboard-configurator/>

This repo mostly based on *embuc* project. 
<https://github.com/embuc/k480_conf>

I jast add new model version and some configure scripts for simple use. 
Steps:

1) check which hidraw device is your logitech keyboard:
```bash
$cat /sys/class/hidraw/hidraw*/device/uevent
```
Identify which one it is, e.g. hidraw2 (It might be any other, be sure which one it is before you proceed).

2) Then run following files to make function keys behave as function keys by default. (after downloading/cloning files from here):
```bash
make build

$sudo ./k480_conf -d /dev/hidraw2 -f on
```

You can also revert this behaviour by running:
```bash
$sudo ./k480_conf -d /dev/hidraw2 -f off
```
which will make media keys default and function keys accessible by (fn + function key).

To keep this setting after a restart you need to edit HID device number in `99-k480.rules` and run the installation script.
```bash
$make install
```