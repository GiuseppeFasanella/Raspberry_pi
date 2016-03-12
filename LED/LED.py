import RPi.GPIO    as GPIO
#GPIO stands for general purpose input/output ports                             
import time
#this choices the name convention for the pins                                  
GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(18,GPIO.OUT)

for i in range(0,5):
    print "LED on"
    GPIO.output(18,GPIO.HIGH)
    time.sleep(1)
    print "LED off"
    GPIO.output(18,GPIO.LOW)
    time.sleep(1)
print "at the end of the for"
