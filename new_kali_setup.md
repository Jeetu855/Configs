### First thing

```sh
sudo apt update && sudo apt upgrade -y
```

### To enable mouse/touchpad click
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
xinput set-prop 9 "libinput Click Method Enabled" 1 0
```

To enable natural scrolling do
```sh
xinput set-prop 9 "libinput Natural Scrolling Enabled" 1
```

To adjust pointer speed do
```sh
xinput set-prop 9 "libinput Accel Speed" 0.5
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

### To setup gdb

```sh
git clone https://github.com/apogiatzis/gdb-peda-pwndbg-gef.git
cd gdb-peda-pwndbg-gef
./install.sh
```

This setup doesnt setup pwndbg correctly, go into ~/pwndbg
open `setup.sh` in an editor and replace 

```sh
PYVER=$(gdb -batch -q --nx -ex 'pi import platform; print(".".join(platform.python_version_tuple()[:2]))')
PYTHON+=$(gdb -batch -q --nx -ex 'pi import sys; print(sys.executable)')

if ! osx; then
    PYTHON+="${PYVER}"
fi
```

with

```sh
PYVER=$(gdb -batch -q --nx -ex 'pi import platform; print(".".join(platform.python_version_tuple()[:2]))')
PYTHON=$(gdb -batch -q --nx -ex 'pi import sys; print(sys.executable)')

if ! osx; then
    PYTHON="${PYTHON}"  # Ensure the Python path is not concatenated with the version
fi
```

Then do
```sh
./setup.sh
```

### Setup zoxide 


```sh
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
```

Add the following line at the end of `~/.zshrc`
```sh
eval "$(zoxide init zsh)"
```

For clipboard integration in tmux
```sh
# Required for clipboard integration
sudo apt-get install xsel  # Debian/Ubuntu
```

Setup rust and cargo
```sh
sudo apt update && sudo apt install libssl-dev pkg-config
sudo apt update && sudo apt install liblzma-dev pkg-config
```

In zshrc
```sh
# For standard installation paths
export OPENSSL_DIR=/usr
export OPENSSL_LIB_DIR=/usr/lib/x86_64-linux-gnu
export OPENSSL_INCLUDE_DIR=/usr/include/openssl

# For pkg-config detection
export PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig

```


```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Set up pwninit

```sh
cargo install pwninit
```
