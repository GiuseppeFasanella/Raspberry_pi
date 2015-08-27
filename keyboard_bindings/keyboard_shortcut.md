On the Pi, you are using LXDE, the default desktop, so you are actually runnig openbox as the window manager.

grep -A 1 "keybind" /etc/xdg/openbox/rc.xml will give you the default shortcuts.

**On the Pi the file to modify is lxde-rc.xml** (not the usual rc.xml)

emacs ~/.config/openbox/lxde-pi-rc.xml

**Under the keyboard tag** add:

`<keyboard ....` Devi inserire quanto segue all'interno del keyboard tag, che ci sara' gia' se ci sono gia' altri shortcuts

`<keybind key= “Name of key”>`

    `<action name= “Execute”>`
    
    `<execute>Command name</execute>`
    
    `</action>`
    
  `</keybind>`
  
`</keyboard>` Devi inserire quanto segue all'interno del keyboard tag, che ci sara' gia' se ci sono gia' altri shortcuts

**Esempio**: con F4 apri un terminale

`<keybind key="F4">`

`<action name="Execute">`

	`<execute>lxterminal</execute>`

    `</action>`

`</keybind>`

**Riavvia il raspberry per rendere operativi i cambiamenti apportati**
