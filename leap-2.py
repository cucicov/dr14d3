        
import argparse                     
import math                         
                                    
from pythonosc import dispatcher    
from pythonosc import osc_server    
                                    
import sys                          
from time import sleep              
import RPi.GPIO as GPIO             
GPIO.setmode(GPIO.BCM)              
                                    
CURRENT_PI_ID = "/pi6/band"         
CURRENT_IP = "192.168.1.106"        
CURRENT_PORT = 7110                 
                                    
RELAIS_1_GPIO = 26                  
RELAIS_2_GPIO = 19                  
RELAIS_3_GPIO = 13                  
RELAIS_4_GPIO = 6                   
RELAIS_5_GPIO = 5                   
RELAIS_6_GPIO = 11                  
RELAIS_7_GPIO = 9                   
RELAIS_8_GPIO = 10                  
RELAIS_9_GPIO = 24                  
RELAIS_10_GPIO = 25                 
RELAIS_11_GPIO = 8                  
RELAIS_12_GPIO = 7                  
RELAIS_13_GPIO = 12                 
RELAIS_14_GPIO = 16                 
RELAIS_15_GPIO = 20                 
RELAIS_16_GPIO = 21                 
                                    
GPIO.setup(RELAIS_1_GPIO, GPIO.OUT) 
GPIO.setup(RELAIS_2_GPIO, GPIO.OUT) 
GPIO.setup(RELAIS_3_GPIO, GPIO.OUT) 
GPIO.setup(RELAIS_4_GPIO, GPIO.OUT) 
GPIO.setup(RELAIS_5_GPIO, GPIO.OUT) 
GPIO.setup(RELAIS_6_GPIO, GPIO.OUT) 
GPIO.setup(RELAIS_7_GPIO, GPIO.OUT) 
GPIO.setup(RELAIS_8_GPIO, GPIO.OUT) 
GPIO.setup(RELAIS_9_GPIO, GPIO.OUT) 
GPIO.setup(RELAIS_10_GPIO, GPIO.OUT)
GPIO.setup(RELAIS_11_GPIO, GPIO.OUT)
GPIO.setup(RELAIS_12_GPIO, GPIO.OUT)
GPIO.setup(RELAIS_13_GPIO, GPIO.OUT)
GPIO.setup(RELAIS_14_GPIO, GPIO.OUT)
GPIO.setup(RELAIS_15_GPIO, GPIO.OUT)
GPIO.setup(RELAIS_16_GPIO, GPIO.OUT)


GPIO.output(RELAIS_1_GPIO, GPIO.HIGH) # out
GPIO.output(RELAIS_2_GPIO, GPIO.HIGH) # on
GPIO.output(RELAIS_3_GPIO, GPIO.HIGH) # out
GPIO.output(RELAIS_4_GPIO, GPIO.HIGH) # on
GPIO.output(RELAIS_5_GPIO, GPIO.HIGH) # out
GPIO.output(RELAIS_6_GPIO, GPIO.HIGH) # on
GPIO.output(RELAIS_7_GPIO, GPIO.HIGH) # on
GPIO.output(RELAIS_8_GPIO, GPIO.HIGH) # on
GPIO.output(RELAIS_9_GPIO, GPIO.HIGH) # on
GPIO.output(RELAIS_10_GPIO, GPIO.HIGH) # on
GPIO.output(RELAIS_11_GPIO, GPIO.HIGH) # on
GPIO.output(RELAIS_12_GPIO, GPIO.HIGH) # on
GPIO.output(RELAIS_13_GPIO, GPIO.HIGH) # on
GPIO.output(RELAIS_14_GPIO, GPIO.HIGH) # on
GPIO.output(RELAIS_15_GPIO, GPIO.HIGH) # on
GPIO.output(RELAIS_16_GPIO, GPIO.HIGH) # on


import types

def lighup(led_band_nr):
    if led_band_nr == 0:
        GPIO.output(RELAIS_1_GPIO, GPIO.HIGH)
        GPIO.output(RELAIS_2_GPIO, GPIO.HIGH)
        GPIO.output(RELAIS_3_GPIO, GPIO.HIGH)
        GPIO.output(RELAIS_4_GPIO, GPIO.HIGH)
        GPIO.output(RELAIS_5_GPIO, GPIO.HIGH)
        GPIO.output(RELAIS_6_GPIO, GPIO.HIGH)
        GPIO.output(RELAIS_7_GPIO, GPIO.HIGH)
        GPIO.output(RELAIS_8_GPIO, GPIO.HIGH)
        GPIO.output(RELAIS_9_GPIO, GPIO.HIGH)
        GPIO.output(RELAIS_10_GPIO, GPIO.HIGH)
        GPIO.output(RELAIS_11_GPIO, GPIO.HIGH)
        GPIO.output(RELAIS_12_GPIO, GPIO.HIGH)
        GPIO.output(RELAIS_13_GPIO, GPIO.HIGH)
        GPIO.output(RELAIS_14_GPIO, GPIO.HIGH)
        GPIO.output(RELAIS_15_GPIO, GPIO.HIGH)
        GPIO.output(RELAIS_16_GPIO, GPIO.HIGH)
    if led_band_nr == 10:
        GPIO.output(RELAIS_1_GPIO, GPIO.HIGH)
    if led_band_nr == 11:
        GPIO.output(RELAIS_1_GPIO, GPIO.LOW)
    if led_band_nr == 20:
        GPIO.output(RELAIS_2_GPIO, GPIO.HIGH)
    if led_band_nr == 21:
        GPIO.output(RELAIS_2_GPIO, GPIO.LOW)
    if led_band_nr == 30:
        GPIO.output(RELAIS_3_GPIO, GPIO.HIGH)
    if led_band_nr == 31:
        GPIO.output(RELAIS_3_GPIO, GPIO.LOW)
    if led_band_nr == 40:
        GPIO.output(RELAIS_4_GPIO, GPIO.HIGH)
    if led_band_nr == 41:
        GPIO.output(RELAIS_4_GPIO, GPIO.LOW)
    if led_band_nr == 50:
        GPIO.output(RELAIS_5_GPIO, GPIO.HIGH)
    if led_band_nr == 51:
        GPIO.output(RELAIS_5_GPIO, GPIO.LOW)
    if led_band_nr == 60:
        GPIO.output(RELAIS_6_GPIO, GPIO.HIGH)
    if led_band_nr == 61:
        GPIO.output(RELAIS_6_GPIO, GPIO.LOW)
    if led_band_nr == 70:
         GPIO.output(RELAIS_7_GPIO, GPIO.HIGH)
    if led_band_nr == 71:
         GPIO.output(RELAIS_7_GPIO, GPIO.LOW)
    if led_band_nr == 80:
          GPIO.output(RELAIS_8_GPIO, GPIO.HIGH)
    if led_band_nr == 81:
          GPIO.output(RELAIS_8_GPIO, GPIO.LOW)
    if led_band_nr == 90:
          GPIO.output(RELAIS_9_GPIO, GPIO.HIGH)
    if led_band_nr == 91:
          GPIO.output(RELAIS_9_GPIO, GPIO.LOW)
    if led_band_nr == 100:
          GPIO.output(RELAIS_10_GPIO, GPIO.HIGH)
    if led_band_nr == 101:
          GPIO.output(RELAIS_10_GPIO, GPIO.LOW)
    if led_band_nr == 110:
          GPIO.output(RELAIS_11_GPIO, GPIO.HIGH)
    if led_band_nr == 111:
          GPIO.output(RELAIS_11_GPIO, GPIO.LOW)
    if led_band_nr == 120:
          GPIO.output(RELAIS_12_GPIO, GPIO.HIGH)
    if led_band_nr == 121:
          GPIO.output(RELAIS_12_GPIO, GPIO.LOW)
    if led_band_nr == 130:
          GPIO.output(RELAIS_13_GPIO, GPIO.HIGH)
    if led_band_nr == 131:
          GPIO.output(RELAIS_13_GPIO, GPIO.LOW)
    if led_band_nr == 140:
          GPIO.output(RELAIS_14_GPIO, GPIO.HIGH)
    if led_band_nr == 141:
          GPIO.output(RELAIS_14_GPIO, GPIO.LOW)
    if led_band_nr == 150:
          GPIO.output(RELAIS_15_GPIO, GPIO.HIGH)
    if led_band_nr == 151:
          GPIO.output(RELAIS_15_GPIO, GPIO.LOW)
    if led_band_nr == 160:
          GPIO.output(RELAIS_16_GPIO, GPIO.HIGH)
    if led_band_nr == 161:
          GPIO.output(RELAIS_16_GPIO, GPIO.LOW)


def osc_action(unused_addr, args, band):
    lighup(band)


if __name__ == "__main__":
    sleep(1);
    parser = argparse.ArgumentParser()

    parser.add_argument("--ip",
                        default=CURRENT_IP, help="The ip to listen on")
    parser.add_argument("--port",
                        type=int, default=CURRENT_PORT, help="The port to listen on")
    args = parser.parse_args()

    sleep(2)
    dispatcher = dispatcher.Dispatcher()
    dispatcher.map(CURRENT_PI_ID, osc_action, "what?")

    sleep(1)
    server = osc_server.ThreadingOSCUDPServer(
        (args.ip, args.port), dispatcher)

    print("Serving on {}".format(server.server_address))
    server.serve_forever()

