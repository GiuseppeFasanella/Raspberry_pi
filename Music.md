https://www.raspberrypi.org/documentation/usage/audio/

* play radio3

google-chrome http://www.radiorai.rai.it/dl/portaleRadio/popup/player_radio.html?v=3

* musiq3

http://www.rtbf.be/radio/liveradio/musiq3

* bbc

http://www.bbc.co.uk/radio/player/bbc_radio_three

crontab -e

34 22 * * * export DISPLAY=:0 && google-chrome --new-window https://www.raspberrypi.org/documentation/linux/usage/cron.md

37 22 * * * export DISPLAY=:0 && google-chrome --new-window http://www.radiorai.rai.it/dl/portaleRadio/popup/player_radio.html?v=3

per leggere i compiti che gli chiedi di eseguire:
crontab -l

Se il job e' corretto, quando chiudi il file ti scrive

crontab: installing new crontab

Questo link mi sembra utissimo
https://www.raspberrypi.org/forums/viewtopic.php?t=92013&p=642819

Io ho scritto questo e funziona perfettamente
16 10 * * * /usr/bin/mplayer Scrivania/Test_intervalli/0.wav

28 22 * * * /home/gfasanel/bin/alarm_clock.sh /home/gfasanel/Scrivania/Messiah_testing/

Per avere accesso alle info di quello che ha fatto CRON

cat /var/log/syslog | grep -i cron

**Per killarlo:**

ps -o pid,sess,cmd afx | grep -A20 "cron$"

e poi

immaginetta
