#### Mapping escape key to caps lock

```sh
grep "caps" /usr/share/X11/xkb/rules/base.lst
```
Select your prefered mapping, I am selecting the following mapping
caps:escape_shifted_capslock Make Caps Lock an additional Esc, but Shift + Caps Lock is the regular Caps Lock

```sh
setxkbmap -option caps:escape_shifted_capslock
```

--- 

#### Lualine 
For lualine to work, need to comment out the code inside bufferline.lua, it should return an empty lua table
