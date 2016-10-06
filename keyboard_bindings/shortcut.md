    <!--Alarm clock in the morning-->
    <keybind key="S-C-p"> <!--S stands for shift (maiuscolo) -->
      <action name="Execute">
        <command>/home/pi/Desktop/Sveglia_mattutina/play_this.sh</command>
      </action>
    </keybind>
    <keybind key="S-C-k"> <!--S stands for shift (maiuscolo) -->
      <action name="Execute">
        <command>/home/pi/Desktop/Sveglia_mattutina/killer_alarm_pi.sh</command>
      </action>
    </keybind>
    <!--Ear training-->
    <keybind key="S-C-m"> <!--S stands for shift (maiuscolo) -->
      <action name="Execute">
        <command>/home/pi/Desktop/EarTraining/bin/ear_trainer_pi.sh /home/pi/Desktop/EarTraining/Intervalli/</command>
      </action>
    </keybind>
    <keybind key="S-C-n"> <!--S stands for shift (maiuscolo) -->
      <action name="Execute">
        <command>/home/pi/Desktop/EarTraining/bin/next_file_ear_trainer_pi.sh /home/pi/Desktop/EarTraining/Intervalli/</command>
      </action>
    </keybind>
    <keybind key="S-C-f"> <!--S stands for shift (maiuscolo) -->
      <action name="Execute">
        <command>/home/pi/Desktop/EarTraining/bin/killer_ear_trainer_pi.sh</command>
      </action>
    </keybind>
