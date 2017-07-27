```
cd Desktop/
mkdir Sveglia_mattutina
cd Sveglia_mattutina/
wget https://raw.githubusercontent.com/GiuseppeFasanella/Raspberry_pi/master/Sveglia_mattutina/alarm_clock_pi.sh 
wget https://raw.githubusercontent.com/GiuseppeFasanella/Raspberry_pi/master/Sveglia_mattutina/killer_alarm_pi.sh 
wget https://raw.githubusercontent.com/GiuseppeFasanella/Raspberry_pi/master/Sveglia_mattutina/play_this.sh

chmod +x alarm_clock_pi.sh
#In alarm_clock fai la scelta del lettore omxplayer in questo caso
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

