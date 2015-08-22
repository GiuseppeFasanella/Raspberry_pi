Assuming that you are using LXDE, the default desktop, you are actually runnig openbox as the window manager.

grep -A 1 \<keybind /etc/xdg/openbox/rc.xml will give you the default ones.

~/.config/openbox/rc.xml contains your shortcuts if it exists.
