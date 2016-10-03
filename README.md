# Raspberry_pi

Connetti il raspberry al modem tramite l'ethernet

sudo apt-get install emacs

sudo apt-get install git

cambia la passwd di pi e di root:
```
#cambia la password di pi
passwd (La password di default al primo accesso e' raspberry)
#Per cambiare la password di root:
sudo su (cosi' via in root)
passwd
```
setta ssh (e consenti root access via ssh)
https://github.com/GiuseppeFasanella/My_utilities/blob/master/Networks/README.md

Reindirizza la porta ssh scelta per andare sul raspberry --> cosi' puoi scrivere ssh -p xxx pi@usersif.ddns.net

Reindirizza la porta 80 per andare sul raspberry --> cosi' sul browser puoi scrivere usersif.ddns.net e finisci su /var/www del raspberry

Installa apache server e proteggi il tuo sito
https://github.com/GiuseppeFasanella/My_utilities/blob/master/Networks/Apache_server.md

Copia la repository del tuo sito e setta tutti i soft link ecc
https://github.com/GiuseppeFasanella/Web_site_apache/blob/master/README.md

Installa php, mysql, ecc:
https://github.com/GiuseppeFasanella/DataBase_utilities/tree/master/Interfaccia_php

Preparare il terreno per connetter il db e creare il database con le sue tabelline:
https://github.com/GiuseppeFasanella/Raspberry_pi/blob/master/Database/README.md

Installare l'hd esterno:
https://github.com/GiuseppeFasanella/Raspberry_pi/blob/master/hd_esterno.md



Setta tutto per remote desktop viewer:
```
(sul raspberry)
#Remote desktop protocol
sudo apt-get install xrdp
xrdp sesman.  This shows you that xrdp is installed and automatically starting up on start up of your Pi
```

A  questo punto puoi usare da ubuntu "Remmina" e condividere la schermata del raspberry

Setta tutto per per poter montare l'hd esterno da 1.5 T

https://www.raspberrypi.org/help/

Progetti che ho realizzato:

* sveglia mattutina
* radio

In teoria ci sarei riuscito, ma non funziona bene vlc su raspbian, ne' lo streaming delle radio

* ear training
* sensore di temperatura
