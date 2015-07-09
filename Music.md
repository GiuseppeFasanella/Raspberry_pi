https://www.raspberrypi.org/documentation/usage/audio/

* play radio3

google-chrome http://www.radiorai.rai.it/dl/portaleRadio/popup/player_radio.html?v=3

crontab -e

34 22 * * * export DISPLAY=:0 && google-chrome --new-window https://www.raspberrypi.org/documentation/linux/usage/cron.md

37 22 * * * export DISPLAY=:0 && google-chrome --new-window http://www.radiorai.rai.it/dl/portaleRadio/popup/player_radio.html?v=3

per leggerlo:
crontab -l

Se il job e' corretto, quando chiudi il file ti scrive

crontab: installing new crontab

Questo link mi sembra utissimo
https://www.raspberrypi.org/forums/viewtopic.php?t=92013&p=642819

Io ho scritto questo e funziona perfettamente
16 10 * * * /usr/bin/mplayer Scrivania/Test_intervalli/0.wav

http://www.bbc.co.uk/radio/player/bbc_radio_three
