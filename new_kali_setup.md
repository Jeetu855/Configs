#### to enable mouse/touchpad click
```sh
sudo apt install xserver-xorg-input-synaptics xinput
sudo apt install xserver-xorg-input-libinput
```

Identify the device 

```sh
xinput list
```

Look for 
```sh
libinput Tapping Enabled
libinput Click Method Enabled
libinput Natural Scrolling Enabled
libinput Accel Speed
```

If your device id is 9, to enable touch do
```sh
xinput set-prop 9 "libinput Tapping Enabled" 1
xinput set-prop 11 "libinput Click Method Enabled" 1 0
```

To enable natural scrolling do
```sh
xinput set-prop 11 "libinput Natural Scrolling Enabled" 1
```

To adjust pointer speed do
```sh
xinput set-prop 11 "libinput Accel Speed" 0.5
```


To make settings persistent, open vim

```sh
sudo vim /etc/X11/xorg.conf.d/30-touchpad.conf
```

And in this file write

```sh
Section "InputClass"
    Identifier "ELAN Touchpad"
    MatchProduct "ELAN Touchpad"
    Driver "libinput"
    Option "Tapping" "on"
    Option "ClickMethod" "clickfinger"
    Option "NaturalScrolling" "true"  # Set to "false" to disable
    Option "AccelSpeed" "0.5"          # Adjust between -1 and 1
EndSection
```
