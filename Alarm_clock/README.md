```
cd Desktop/
mkdir Sveglia_mattutina
cd Sveglia_mattutina/
wget https://raw.githubusercontent.com/GiuseppeFasanella/Raspberry_pi/master/Alarm_clock/alarm_clock_pi.sh .
wget https://raw.githubusercontent.com/GiuseppeFasanella/Raspberry_pi/master/Alarm_clock/killer_alarm_pi.sh .
chmod +x alarm_clock_pi.sh
chmod +x killer_alarm_pi.sh
```

**Passo 2**: Keyboard binding in /home/pi/.config/openbox/lxde-pi-rc.xml

\<keyboard>

    <keybind key="S-C-k"> <!--S stands for shift (maiuscolo) -->
    
      <action name="Execute">
      
        <command>/home/pi/Desktop/Sveglia_mattutina/killer_alarm_pi.sh</command>
        
      </action>
      
    </keybind>
    
  \</keyboard>


`crontab -e` e aggiungi questi job

\# m h  dom mon dow   command

00 06 * * 1-5 /home/pi/Desktop/Sveglia_mattutina/alarm_clock_pi.sh /home/pi/Desktop/Sveglia_mattutina/AudioLibri/IlPiacere/

00 09 * * 6-7 /home/pi/Desktop/Sveglia_mattutina/alarm_clock_pi.sh /home/pi/Desktop/Sveglia_mattutina/AudioLibri/IlPiacere/

