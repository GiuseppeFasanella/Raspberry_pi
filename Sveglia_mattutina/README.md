```
cd Desktop/
mkdir Sveglia_mattutina
cd Sveglia_mattutina/
wget https://raw.githubusercontent.com/GiuseppeFasanella/Raspberry_pi/master/Sveglia_mattutina/alarm_clock_pi.sh 
wget https://raw.githubusercontent.com/GiuseppeFasanella/Raspberry_pi/master/Sveglia_mattutina/killer_alarm_pi.sh 
wget https://raw.githubusercontent.com/GiuseppeFasanella/Raspberry_pi/master/Sveglia_mattutina/play_this.sh

chmod +x alarm_clock_pi.sh
#In alarm_clock fai la scelta del lettore omxplayer in questo caso
#Per il laptop ho usato vlc con l'opzione -I dummy (altrimenti vlc cerca di aprire l'interfaccia grafica e il cronjob crasha)
#e quindi, invece che 'omxplayer', schiaffa 'vlc -I dummy' nello script
chmod +x killer_alarm_pi.sh
chmod +x play_this.sh
sudo timedatectl set-timezone Europe/Rome
```

**Passo 2**: Keyboard binding in /home/pi/.config/openbox/lxde-pi-rc.xml

\<keyboard>

    <keybind key="S-C-k"> <!--S stands for shift (maiuscolo) -->
    
      <action name="Execute">
      
        <command>/home/pi/Desktop/Sveglia_mattutina/killer_alarm_pi.sh</command>
        
      </action>
      
    </keybind>
    
  \</keyboard>

**Passo 3**: Controlla data e ora 
```
timedatectl
```

Puoi impostarla a mano brute force con:
```
sudo date 10031516
#sudo date mmggorario
#Quindi qui sto dicendo: e' il 3 ottobre, ore 15:16
```

`crontab -e` e aggiungi questi job

\# m h  dom mon dow   command

00 06 * * 1-5 /home/pi/Desktop/Sveglia_mattutina/alarm_clock_pi.sh /home/pi/Desktop/Sveglia_mattutina/AudioLibri/IlPiacere/

00 09 * * 6-7 /home/pi/Desktop/Sveglia_mattutina/alarm_clock_pi.sh /home/pi/Desktop/Sveglia_mattutina/AudioLibri/IlPiacere/

##Con vlc sul laptop ho notato che l'output non veniva re-indirizzato correttamente, cioe' anche con l'opzione vlc -I dummy
non sentivo nulla, ma il job non falliva, semplicemente l'audio non era ridiretto correttamente.
e' bastato scrivere cosi': DISPLAY=:0.0

09 23 * * 1-5 DISPLAY=:0.0 /home/gfasanel/Sveglia_mattutina/alarm_clock_pi.sh /home/gfasanel/Scaricati/Frankenstein_1816

Infine per debuggare puo' essere utile 
vlc -vvv rtsp://your.url 2>&1 > /tmp/vlc.log



