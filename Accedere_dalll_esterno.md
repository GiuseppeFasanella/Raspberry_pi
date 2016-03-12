Per la prima volta, chiedi l'inet address tramite `ifconfig`. l'inet address e' qualcosa tipo 192.168.1.12

Quando l'hai scoperto scopri su quale porta hai impostato il protocollo ssh (di default e' la 22 ma io l'ho cambiata e me la dimentico sempre)

`emacs /etx/ssh/sshd_config`

Ora sei pronto per:

`ssh -p port_number pi@192.168.1.12`

Quando avrai impostato NOIP potrai fare cosi':

```
ssh -p port_number pi@usersif.ddns.net
scp -P port_number 1.mp3  pi@usersif.ddns.net:~
```
