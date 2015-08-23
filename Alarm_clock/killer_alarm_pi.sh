#! /bin/bash                                                                                                                                                                                                        
pkill -s $(ps -o pid,sess,cmd afx | grep -A20 "cron$" | grep "alarm_clock_pi.sh" | head -1 | cut -f2 -d ' ')
