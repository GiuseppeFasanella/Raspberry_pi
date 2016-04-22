```
chmod +x lighton.py
chmod +x lightoff.py
```

Testa se l'utente di apache (www-data) riesce a fare `sudo` senza problemi:
```
su - www-data -c "sudo /home/pi/lighton.py"
sudo: no tty present and no askpass program specified
```
Ecco => vuol dire che si aspetta una passwd che non gli stai passando

Ok ==> modifca visudo
```
sudo visudo
www-data ALL=(ALL) NOPASSWD: /home/pi/lighton.py, /home/pi/lightoff.py
```

Che l'utente di apache e' www-data si vede cosi' (oltre a essere risaputo):
```
ps aux | egrep '(apache|httpd)'
```


