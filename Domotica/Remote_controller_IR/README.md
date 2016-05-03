sistema operativo: Raspbmc invece che raspbian
software per media center:XBMC

```
Lista della spesa:
Telecomando IR (uno qualsiasi)
Sensore IR siglato TSOPxxxx
(Il TSOP accetta tensione di alimentazione a 3.3 V)
(Il sensore IR si puo' ricavare anche da un vecchio registratore)
Io ho comprato récepteur IR rayonnement infrarouge Module 38KHz TSOP4838 DIP - 3
jumper wire
```

1. Latest OS and firmware, altrimenti
```
 sudo /etc/init.d/lirc start
[ ok ] No valid /etc/lirc/lircd.conf has been found..
[ ok ] Remote control support has been disabled..
[ ok ] Reconfigure LIRC or manually replace /etc/lirc/lircd.conf to enable..
```

Update OS
```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
```
Update firmware
```
sudo apt-get install git-core
sudo wget http://goo.gl/1BOfJ -O /usr/bin/rpi-update && sudo chmod +x /usr/bin/rpi-update
sudo rpi-update
```

```
sudo apt-get install lirc

Setting up lirc (0.9.0~pre1-1) ...
[ ok ] No valid /etc/lirc/lircd.conf has been found..
[ ok ] Remote control support has been disabled..
[ ok ] Reconfigure LIRC or manually replace /etc/lirc/lircd.conf to enable..

aggiunbgi in /etc/modules
lirc_dev
lirc_rpi gpio_in_pin=23

cambia /etc/lirc/hardware.conf

dtoverlay=lirc-rpi,gpio_in_pin=23,gpio_out_pin=22

sudo /etc/init.d/lirc stop
sudo /etc/init.d/lirc start

reboot

Monta tutto

Testa il telecomando
sudo /etc/init.d/lirc stop
mode2 -d /dev/lirc0

```
