import RPi.GPIO as GPIO
import time
GPIO.setmode(GPIO.BCM) # GPIO Numbers instead of board numbers

RELAIS_1_GPIO = 26
RELAIS_2_GPIO = 19
RELAIS_3_GPIO = 13
RELAIS_4_GPIO = 6
RELAIS_5_GPIO = 5
RELAIS_6_GPIO = 11
RELAIS_7_GPIO = 9
RELAIS_8_GPIO = 10
GPIO.setup(RELAIS_1_GPIO, GPIO.OUT) # GPIO Assign mode
GPIO.setup(RELAIS_2_GPIO, GPIO.OUT)
GPIO.setup(RELAIS_3_GPIO, GPIO.OUT) # GPIO Assign mode
GPIO.setup(RELAIS_4_GPIO, GPIO.OUT)
GPIO.setup(RELAIS_5_GPIO, GPIO.OUT) # GPIO Assign mode
GPIO.setup(RELAIS_6_GPIO, GPIO.OUT)
GPIO.setup(RELAIS_7_GPIO, GPIO.OUT)
GPIO.setup(RELAIS_8_GPIO, GPIO.OUT)

while True:
    GPIO.output(RELAIS_1_GPIO, GPIO.LOW) # out
    GPIO.output(RELAIS_2_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_3_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_4_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_5_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_6_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_7_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_8_GPIO, GPIO.HIGH) # on
    time.sleep(1)
    GPIO.output(RELAIS_1_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_2_GPIO, GPIO.LOW) # on
    GPIO.output(RELAIS_3_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_4_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_5_GPIO, GPIO.HIGH)
    GPIO.output(RELAIS_6_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_7_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_8_GPIO, GPIO.HIGH) # on
    time.sleep(1)
    GPIO.output(RELAIS_1_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_2_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_3_GPIO, GPIO.LOW) # out
    GPIO.output(RELAIS_4_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_5_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_6_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_7_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_8_GPIO, GPIO.HIGH) # on
    time.sleep(1)
    GPIO.output(RELAIS_1_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_2_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_3_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_4_GPIO, GPIO.LOW) # on
    GPIO.output(RELAIS_5_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_6_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_7_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_8_GPIO, GPIO.HIGH) # on
    time.sleep(1)
    GPIO.output(RELAIS_1_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_2_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_3_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_4_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_5_GPIO, GPIO.LOW) # out
    GPIO.output(RELAIS_6_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_7_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_8_GPIO, GPIO.HIGH) # on
    time.sleep(1)
    GPIO.output(RELAIS_1_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_2_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_3_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_4_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_5_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_6_GPIO, GPIO.LOW) # on
    GPIO.output(RELAIS_7_GPIO, GPIO.HIGH) # on
    GPIO.output(RELAIS_8_GPIO, GPIO.HIGH) # on
    time.sleep(1)
    GPIO.output(RELAIS_1_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_2_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_3_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_4_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_5_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_6_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_7_GPIO, GPIO.LOW) # out
    GPIO.output(RELAIS_8_GPIO, GPIO.HIGH) # out
    time.sleep(1)
    GPIO.output(RELAIS_1_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_2_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_3_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_4_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_5_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_6_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_7_GPIO, GPIO.HIGH) # out
    GPIO.output(RELAIS_8_GPIO, GPIO.LOW) # out
    time.sleep(3)