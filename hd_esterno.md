```
sudo fdisk -l

dopo inserita la pennetta
sudo fdisk -l cosi' capisci come si chiama

Tu inserisci la pennetta, quella si automonta. Oh, allora tu la smonti e la rimonti dove dici tu:

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

puoi anche montare il disco
sshfs -p 3005 root@usersif.ddns.net:/mnt/usb_drive/ /home/gfasanel/Scrivania/remote_dir

sudo umount /home/gfasanel/Scrivania/remote_dir
```

La prima cosa da capire e' che tipo di File System ha l'hard disk che vuoi collegare

sudo -u www-data id
uid=33(www-data) gid=33(www-data) groups=33(www-data)

sudo mount -o rw,uid=33,umask=003 /dev/sda1 /mnt/usb_drive/

molto semplicemente cosi' ha funzionato
sudo mount -o umask=000 /dev/sda1 /mnt/usb_drive/

sudo apt-get install ntfs-3g

sudo mount -o rw -t ntfs-3g /dev/sda1 /mnt/usb_drive/


/dev/sda1      	/mnt/usb_drive 	ntfs   	rw             	  0    	  0



A questo punto, e solo a questo punto, quando hai specificato che e' un file system ntfs, puoi montare in locale la cartella remota e leggerci, scriverci, editare i file

sshfs -p 3005 root@usersif.ddns.net:/var/www/usb_drive_soft_link/Film,Musica,Libri,Partiture/ /home/gfasanel/Scrivania/remote_dir/

A funzionare sshfs funziona ma e' piuttosto lento perche' e' "secure"

--> Samba

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

sudo apt-get install samba samba-common-bin
sudo apt-get install cifs-utils

cd /etc/samba/
sudo emacs smb.conf

security = user

sudo /etc/init.d/samba restart

Creare la passwd Samba per il nostro uutente

sudo smbpasswd -a pi

[hd share]
comment = external HD share
path = /mnt/usb_drive
writeable = yes
sudo service samba restart





pi@raspberrypi /etc/samba $ cd ~
pi@raspberrypi ~ $ mkdir shares
pi@raspberrypi ~ $ mkdir shares/public
pi@raspberrypi ~ $ mkdir shares/private
pi@raspberrypi ~ $ touch shares/public/public.txt
pi@raspberrypi ~ $ touch shares/private/private.txt


sudo emacs /etc/samba/smb.conf
#======================= Share Definitions =======================              
[public]
comment = Public Files	
path = /home/pi/shares/public
browseable = yes
writeable = yes
guest ok = yes
read only = no

sudo service samba restart


chmod -R 777 /home/pi/shares/public

nautilus
Esplora rete
Raspberry, public ecc



comment = external HD share
path = /mnt/usb_drive
writeable = yes
[public]
comment = Public Files
path = /home/pi/shares/public
browseable = yes
writeable = yes
guest ok = yes
read only = no
[private]
comment = private Files
path = /home/pi/shares/private
browseable= yes
writeable = yes
guest ok = no
read only = no

Se cambi guest ok = no in guest ok= yes allora anche la private e' accessibile dall'esterno senza nessuna passwd. Tuttavia, in base ai permessi della cartella private, potrai scrivere o no. Se vuoi scrivere senza mettere la passwd devi fare chmod -R 777 /home/pi/share/private

Se invece fai guest ok = no ti chiede la passwd, poi siccome c'e' writeable= yes allora puoi scrivere tranquillamente

guest ok = no e' il default 


[hd share]
comment = external HD share
path = /mnt/usb_drive
guest ok = yes
writeable = yes
[public]
comment = Public Files
path = /home/pi/shares/public
browseable = yes
writeable = yes
guest ok = yes
read only = no
[private]
comment = private Files
path = /home/pi/shares/private
browseable= yes
writeable = yes
#guest ok = yes                                                                                                                                                                  
guest ok = no
read only = no

Ok e mettiamo la parola fine anche su samba
