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

Caricarsi gli shortcut che ho definito per la tastiera:
https://github.com/GiuseppeFasanella/Raspberry_pi/blob/master/keyboard_bindings/shortcut.md

####Sveglia mattutina
https://github.com/GiuseppeFasanella/Raspberry_pi/tree/master/Sveglia_mattutina

####Sensore di temperatura
https://github.com/GiuseppeFasanella/Raspberry_pi/tree/master/Sensore_temperatura

####Gioca con il LED
```
wget https://raw.githubusercontent.com/GiuseppeFasanella/Raspberry_pi/master/LED/LED.py
chmod +x LED.py
python LED.py
```
####Gioca con il relay
```
wget https://raw.githubusercontent.com/GiuseppeFasanella/Raspberry_pi/master/Domotica/Relay/relay_off.py
wget https://raw.githubusercontent.com/GiuseppeFasanella/Raspberry_pi/master/Domotica/Relay/relay_on.py
chmod +x
sudo ./relay_on.py
```
####Far accendere un LED tramite php e apache (prototipo per cose piu' complesse)
https://github.com/GiuseppeFasanella/Web_site_apache/blob/master/light_project/

dove una pagina in php a cui si arriva tramite il sito internet apache presenta due bottoncini "accendi" - "spegni" che servono per chiamare due appositi script in .py

La particolarita' e' che bisogna fare `sudo visudo` e dare permessi di ROOT senza password all'utente generico di apache chiamato www-data (non ho trovato soluzioni migliori)
* ear training

* radio
In teoria ci sarei riuscito, ma non funziona bene vlc su raspbian, ne' lo streaming delle radio




####Extra

Setta tutto per remote desktop viewer:
```
(sul raspberry)
#Remote desktop protocol
sudo apt-get install xrdp
xrdp sesman.  This shows you that xrdp is installed and automatically starting up on start up of your Pi
```

A  questo punto puoi usare da ubuntu "Remmina" e condividere la schermata del raspberry



