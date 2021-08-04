#!/usr/bin/env python3
import argparse
import math

from pythonosc import dispatcher
from pythonosc import osc_server

import sys
from time import sleep
import RPi.GPIO as GPIO
GPIO.setmode(GPIO.BCM)

CURRENT_PI_ID = "/pi7/band"
CURRENT_IP = "192.168.1.107"
CURRENT_PORT = 7110

RELAIS_1_GPIO = 8
RELAIS_2_GPIO = 7
RELAIS_3_GPIO = 25
RELAIS_4_GPIO = 16 
RELAIS_5_GPIO = 21
RELAIS_6_GPIO = 20
GPIO.setup(RELAIS_1_GPIO, GPIO.OUT) 
GPIO.setup(RELAIS_2_GPIO, GPIO.OUT)
GPIO.setup(RELAIS_3_GPIO, GPIO.OUT)
PIO.setup(RELAIS_4_GPIO, GPIO.OUT)
GPIO.setup(RELAIS_5_GPIO, GPIO.OUT)
GPIO.setup(RELAIS_6_GPIO, GPIO.OUT)
GPIO.output(RELAIS_1_GPIO, GPIO.LOW) # out
GPIO.output(RELAIS_2_GPIO, GPIO.LOW) # on
GPIO.output(RELAIS_3_GPIO, GPIO.LOW) # out
GPIO.output(RELAIS_4_GPIO, GPIO.LOW) # on
GPIO.output(RELAIS_5_GPIO, GPIO.LOW) # out
GPIO.output(RELAIS_6_GPIO, GPIO.LOW) # on

import types

def lighup(led_band_nr):
    if led_band_nr == 0:                                     
        GPIO.output(RELAIS_1_GPIO, GPIO.LOW)
        GPIO.output(RELAIS_2_GPIO, GPIO.LOW)
        GPIO.output(RELAIS_3_GPIO, GPIO.LOW)
        GPIO.output(RELAIS_4_GPIO, GPIO.LOW)
        GPIO.output(RELAIS_5_GPIO, GPIO.LOW)
        GPIO.output(RELAIS_6_GPIO, GPIO.LOW)
    if led_band_nr == 10:
        GPIO.output(RELAIS_1_GPIO, GPIO.LOW)
    if led_band_nr == 11:
        GPIO.output(RELAIS_1_GPIO, GPIO.HIGH)
    if led_band_nr == 20:
        GPIO.output(RELAIS_2_GPIO, GPIO.LOW)
    if led_band_nr == 21:
        GPIO.output(RELAIS_2_GPIO, GPIO.HIGH)
    if led_band_nr == 30:
        GPIO.output(RELAIS_3_GPIO, GPIO.LOW)
    if led_band_nr == 31:
        GPIO.output(RELAIS_3_GPIO, GPIO.HIGH)
    if led_band_nr == 40:
        GPIO.output(RELAIS_4_GPIO, GPIO.LOW)
    if led_band_nr == 41:
        GPIO.output(RELAIS_4_GPIO, GPIO.HIGH)
    if led_band_nr == 50:
        GPIO.output(RELAIS_5_GPIO, GPIO.LOW)
    if led_band_nr == 51:
        GPIO.output(RELAIS_5_GPIO, GPIO.HIGH)
    if led_band_nr == 60:
        GPIO.output(RELAIS_6_GPIO, GPIO.LOW)
    if led_band_nr == 61:
        GPIO.output(RELAIS_6_GPIO, GPIO.HIGH)

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




