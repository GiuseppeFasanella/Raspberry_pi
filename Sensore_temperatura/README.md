

Prossimi passi:
cronjob che lancia uno script ogni ora. Lo script prende la data, l'ora e la temperatura e la scrive su file (>>file.txt). Poi dovresi fare il parsing di file.dat e insomma avere un file.html leggibile da browser

Ogni ora, chiedi al sensore che temperatura misura e scrivilo su un txt file, il quale e' messo su /var/www
```
#00 * * * 1-7 /home/pi/Desktop/Sensore_temperatura/check_temp.sh
```

Fatto e funziona. Il .txt lo metti su /var/www/ del server apache e cosi' lo puoi consultare da remoto.
Perfetto!

poi sto file.html lo metti in /var/log (quindi devi avere installato il server apache sul raspberry) cosi' che posso vedere i numeretti dall'esterno

Per avere i plot dell'andamento della temperatura conviene usare javascript->javaplot

apt-get install libusb-dev libusb-1.0-0-dev

export LIBUSB_LIBDIR=/usr/lib/arm-linux-gnueabihf

export LIBUSB_INCDIR=/usr/include/libusb-1.0

wget http://dev-random.net/wp-content/uploads/2013/08/temperv14.zip

unzip temperv14.zip

cd temperv14/

make

test with:

sudo ./temperv14 -c (in centrigradi)

mv temperv14 /usr/bin/ (cosi' e' sempre eseguibile)

e lo puoi usare con

(sudo) temperv14 -c (-f per gradi Fare...)

Se e' scalibrato, puoi sottrare un offset

If it’s more, then do the following
Edit the file temperv14.c with Nano or Vi

Change line number 80 from “static int substract = 0″ to the number of degrees in CELSIUS the TEMPer device is showing too much.
Save it and compile (with make)

Se per caso ti dice 

Could not set configuration 1

e' perche' devi dare `sudo temperv14` devi essere super-user



