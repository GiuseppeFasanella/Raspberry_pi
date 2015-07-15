When I first got my Pi I wanted to set it up so I could use LXDE without a mouse. To that end I set up a number of keyboard shortcuts for frequent tasks and menus. In Raspian this is done by editing:

 ~/.config/openbox/lxde-rc.xml
 From command line type:

 nano ~/.config/openbox/lxde-rc.xml
 or from a terminal window inside LXDE:

leafpad ~/.config/openbox/lxde-rc.xml

 Under the keyboard tag add:

<keybind key= “Name of key”>
    <action name= “Execute”>
        <execute>Command name</execute>
    </action>
</keybind>
 So for example to make the Window’s button open the LXDE menu (similar to its function in Windows) add the following under keyboard (Super_L is the code the the Windows key on the keyboard and “lxpanelctl menu” the command for opening the menu:

 <keybind key="Super_L">
    <action name="Execute">
        <command>lxpanelctl menu</command>
    </action>
</keybind>
 or to make F4 open a terminal:

<keybind key="F4">
    <action name="Execute">
        <execute>lxterminal</execute>
    </action>
</keybind>
More information on setting up shortcut keys in OpenBox can be found here:

 http://openbox.org/wiki/Help:Bindings#Modifiers

 though it should be noted that on the Pi the file to modify is lxde-rc.xml not rc.xml.
