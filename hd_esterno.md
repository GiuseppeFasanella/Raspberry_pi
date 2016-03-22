La prima cosa da capire e' che tipo di File System ha l'hard disk/pennetta che vuoi collegare.
L'idea e' di fare anche un soft_link alla cartella www in modo da poter accedere ai contenuti dell'hd anche tramite
apache.

```
sudo fdisk -l
#trova sia il nome dell'usb disk, sia il tipo di fs
```
Ce ne sono di 3 tipi esistenti: 
* FAT32 (compatibile tra i vari sistemi operativi, ma non supporta file piu' grandi di 4 GB)
* NTFS (windows-based, ma quelli di linux hanno inventato un sistema che permette di montare e scrivere anche su questi fs)
* exQualcosa (linux based, windows e Mac proprio non lo supportano)


1) Montare una pennetta FAT32 (caso piu' facile)
```
sudo fdisk -l
# e cosi' scopri che la pennetta si chiama, metti /dev/sda1
# La pennetta in genere si automonta, tu la smonti e la rimonti dove piace a te

cd /var/www/
sudo su
umount /dev/sda1
mkdir /mnt/usb_drive
chmod 777 /mnt/usb_drive/
ln -s /mnt/usb_drive/ usb_drive_soft_link
chmod 777 usb_drive_soft_link
mount /dev/sda1 /mnt/usb_drive

emacs index.html
<p><a href="usb_drive_soft_link" target="_blank">usb_drive</a><p>

#####################
Quando decidi di smontare il disco:
umount /dev/sda1
```

Le volte dopo ti basta fare:
```
sudo umount /dev/sda1
sudo mount /dev/sda1 /mnt/usb_drive

puoi anche montare il disco, dopo aver modificato il file ssh.d (qualcosa del genere) per
permettere ssh login come root
sshfs -p 3005 root@usersif.ddns.net:/mnt/usb_drive/ /home/gfasanel/Scrivania/remote_dir

sudo umount /home/gfasanel/Scrivania/remote_dir
```

2) Montare l'hd da 1.5 T (NTFS): e' stato piu' difficile ma piu' soddisfacente
Allora, inserisci l'hd e fai `fdisk -l`, al che ho scoperto che era  ntfs. Per far si' che linux ci sappia lavorare
occorre scaricare il pacchetto ntfs-3g

```
sudo apt-get install ntfs-3g
sudo mount -o rw -t ntfs-3g /dev/sda1 /mnt/usb_drive/
```
Siccome non lo voglio montare ogni volta a mano, ho modificato /etc/fstab aggiungendo questa riga, che dice:
monta /dev/sda1 nella cartella /mnt/usb_drive, ricordati che e' ntfs e dai permessi di lettura e scrittura
```
/dev/sda1      	/mnt/usb_drive 	ntfs   	rw             	  0    	  0
```

Puoi montare l'hd remoto in locale tramite 2 meccanismi:
* sshfs
* samba

```
sshfs -p XXX root@usersif.ddns.net:/var/www/usb_drive_soft_link/Film,Musica,Libri,Partiture/ /home/gfasanel/Scrivania/remote_dir/
#A funzionare sshfs funziona ma e' piuttosto lento perche' e' "secure"
```

--> Samba

```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install samba samba-common-bin
sudo apt-get install cifs-utils
cd /etc/samba/
sudo emacs smb.conf
security = user
sudo /etc/init.d/samba restart

Crea un utente Samba (nome a tua scelta) e dagli una passwd
sudo smbpasswd -a pi
```

L'idea e' quella di modificare il /etc/conf/smb.conf dicendo cosa sharare e come e poi fare `sudo service samba restart`


Faccio qui 3 esempi: cartella pubblica, cartella privata e poi infine arrivo all'hd

```
pi@raspberrypi ~ $ mkdir shares
pi@raspberrypi ~ $ mkdir shares/public
pi@raspberrypi ~ $ mkdir shares/private
pi@raspberrypi ~ $ touch shares/public/public.txt
pi@raspberrypi ~ $ touch shares/private/private.txt

sudo emacs /etc/samba/smb.conf
[public]
comment = Public Files
path = /home/pi/shares/public
browseable = yes
writeable = yes
guest ok = yes 
#(guest ok = yes--> vuol dire che anche senza una password puoi leggere la cartella sharata, se vuoi pero' scrivere sulla
#cartella sharata, devi anche fare chmod -R 777 public/
read only = no
[private]
comment = private Files
path = /home/pi/shares/private
browseable= yes
writeable = yes
guest ok = no
#(guest ok = no --> e' il default, io l'ho scritto per essere esplicito. In questo modo ti chiede la passwd di Samba
# e se inserisci la passwd, avendo tu specificato writeable = yes ci puoi scrivere
read only = no

sudo service samba restart

chmod -R 777 /home/pi/shares/public #perche' alla cartella public vuoi accedere senza inserire nome utente e passwd

dal Nautilus -> Esplora rete -> Raspberry --> ecc
```

Per l'hd da 1.5 T io ho questo nel config:
```
[hd share]
comment = external HD share
path = /mnt/usb_drive
guest ok = yes
writeable = yes
```
avendo gia' dato permessi rw alla cartella dove e' montato l'hd.
