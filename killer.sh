#! /bin/bash                                                                                                                                                                                                        
ps -o pid,sess,cmd afx | grep -A20 "cron$" | grep "/home/gfasanel/bin/alarm_clock.sh" | head -1 | cut -f2 -d ' '
