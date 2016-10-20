```
gfasanel@Amerigo:~$ ssh -p XXX pi@192.168.1.29
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
Someone could be eavesdropping on you right now (man-in-the-middle attack)!
It is also possible that a host key has just been changed.
The fingerprint for the ECDSA key sent by the remote host is
bla bla
Please contact your system administrator.
Add correct host key in /home/gfasanel/.ssh/known_hosts to get rid of this message.
Offending ECDSA key in /home/gfasanel/.ssh/known_hosts:844
  remove with: ssh-keygen -f "/home/gfasanel/.ssh/known_hosts" -R [192.168.1.29]:XXXX
ECDSA host key for [192.168.1.29]:XXXX has changed and you have requested strict checking.
Host key verification failed.


/home/gfasanel/.ssh/known_hosts


Warning: the ECDSA host key for '[usersif.ddns.net]:3005' differs from the key for the IP address '[78.233.149.226]:3005'
Offending key for IP in /home/gfasanel/.ssh/known_hosts:726
Matching host key in /home/gfasanel/.ssh/known_hosts:865
Are you sure you want to continue connecting (yes/no)? yes
```
