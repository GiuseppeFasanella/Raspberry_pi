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
