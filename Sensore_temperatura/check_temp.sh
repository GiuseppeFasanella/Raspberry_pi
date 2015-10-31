#! /bin/bash
date > temp.txt #better than .dat, so the browser opens it
sudo temperv14 -c >> temp.txt
sudo mv temp.txt /var/www/