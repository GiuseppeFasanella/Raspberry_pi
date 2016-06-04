#! /usr/bin/python                                                                                                                                                              
import RPi.GPIO    as GPIO
#GPIO stands for general purpose input/output ports                                                                                                                             
import time
#this choices the name convention for the pins                                                                                                                                  
GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(23,GPIO.OUT)


GPIO.output(23,GPIO.HIGH)
