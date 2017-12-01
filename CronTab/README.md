crontab -e

```
36 7 * * 1-5 DISPLAY=:0.0 /home/gfasanel/Sveglia_mattutina/alarm_clock_pi.sh /home/gfasanel/Scaricati/Frankenstein_1816/
```

![alt tag] (https://github.com/GiuseppeFasanella/Raspberry_pi/blob/master/img/output_cron.png)

DEBUGGARE

* * * * python (full_path)script.py > (full_path)file_debug.txt 2>&1 (cioe' dumpi l'output su un file da te specificato

Credo che si possa anche semplicemente fare aggiungendo la `&` prima del `>`

`script.sh &> debug.txt`

First column is PID, second column is Session ID, third column is the command.

You can kill the cron job, **killing the Session ID**.

![alt tag] (https://github.com/GiuseppeFasanella/Raspberry_pi/blob/master/img/kill_cron_mio.png)
