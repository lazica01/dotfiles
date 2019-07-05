#! /usr/bin/env python3

import os

dict = {
    "home_screen.json"  :"/.config/i3/home_screen.json",
    "i3"                :"/.config/i3/config",
    "polybar"           :"/.config/polybar/config",
    "vimrc"             :"/.vimrc",
    "bashrc"            :"/.bashrc",
    "bash_profile"      :"/.bash_profile"
}

home = os.path.expanduser("~")

for k, v in dict.items():
    path = home + v
    if os.path.isfile(path):
        os.remove(path)
    os.link(k, path)
    print("Linked: " + k + " >> " + path)
