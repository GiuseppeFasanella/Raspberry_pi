https://www.raspberrypi.org/documentation/usage/audio/

play radio3
google-chrome http://www.radiorai.rai.it/dl/portaleRadio/popup/player_radio.html?v=3

crontab -e

34 22 * * * export DISPLAY=:0 && google-chrome --new-window https://www.raspberrypi.org/documentation/linux/usage/cron.md

37 22 * * * export DISPLAY=:0 && google-chrome --new-window http://www.radiorai.rai.it/dl/portaleRadio/popup/player_radio.html?v=3

per leggerlo:
crontab -l

Se il job e' corretto, quando chiudi il file ti scrive

crontab: installing new crontab
