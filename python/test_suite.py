'''
File: test_suite.py
Author: Aaron M. Hoover
Date: 2011-04-16
Description: A single class representing the whole test suite for testing all
functionality of ImageProc/CrawlerProc.
'''

import sys
import csv
import time

from serial import Serial, SerialException
#from PIL import Image
import numpy as np

from xbee import XBee
from struct import unpack

kTimeout = 5
kRtscts = 0

kPldStatusIdx = 0
kPldCommandIdx = 1
kPldDataStart = 2

kStatusUnused   = 0
kTestRadioCmd   = 0
kTestGyroCmd    = 1
kTestAccelCmd   = 2
kTestDFlashCmd  = 3
kTestMotorCmd   = 4
kTestSMACmd     = 5

#kImWidth = 160
#kImHeight = 100


ON = 1
OFF = 0


class TestSuite():
    '''Class representing the ImageProc test suite'''

    def __init__(self, dev_name, baud_rate=230400, dest_addr='\xff\xff'):
        '''
        Description:
        Initiate the 802.15.4 connection and configure the target.
        Class must be instantiated with a connection name. On Windows this is
        typically of the form "COMX". On Mac, the serial device connection
        string is typically '/dev/tty.DEVICE_NAME-SPP-(1)' where the number at
        the end is optional depending on the version of the OS.


        Inputs:
            dev_name: The device name to connect to. Examples are COM5 or
                      /dev/tty.usbserial.
                print ord(datum)
        '''
        if dev_name == "" or dev_name == None:
            print "You did not instantiate the class with a device name " + \
                    "(eg. COM5, /dev/tty.usbserial)."
            sys.exit()

        if dest_addr == '\xff\xff':
            print "Destination address is set to broadcast. You will " +\
                    "interfere with other 802.15.4 devices in the area." +\
                    " To avoid interfering, instantiate the class with a " +\
                    "destination address explicitly."

        self.dest_addr = dest_addr
        self.last_packet = None

        try:
            self.conn = Serial(dev_name, baudrate=baud_rate, rtscts=True)
            if self.conn.isOpen():
                self.radio = XBee(self.conn, callback=self.receive)
                pass
            else:
                raise SerialException('')
        except (AttributeError, SerialException):
            print "Unable to open a connection to the target. Please" + \
                  "  verify your basestation is enabled and properly configured."
            raise

    def set_dest_addr(self, dest_addr):
        self.dest_addr = dest_addr

    def check_conn(self):
        '''
        Description:
            A simple utility function for checking the status of the
            connection.
        '''
        if self.conn == None or not self.conn.isOpen():
            print 'The connection to the target appears to be closed.'
            return False
        else:
            return True

    def receive(self, packet):
        self.last_packet = packet
        rf_data = packet.get('rf_data')
        typeID = ord(rf_data[1])
        if typeID == kTestAccelCmd or typeID == kTestGyroCmd:
            print unpack('3h', rf_data[2:])
        elif typeID == kTestDFlashCmd:
            print ''.join(rf_data[2:])
        elif typeID == kTestMotorCmd:
            print unpack('50H', rf_data[2:])

    def test_radio(self):
        '''
        Description:
            This test sends command packets to the target requesting
            the results of a radio test. The results should be the
            receipt of three packets. The payloads of those three packets
            should print as consecutive integers 0-9, 10-19, and 20-29
            respectively. 
        '''

        header = chr(kStatusUnused) + chr(kTestRadioCmd)
        for i in range(1, 4):
            data_out = header + ''.join([chr(datum) for datum in range((i-1)*10,i*10)])
            print data_out
            print("Transmitting packet " + str(i) + "...")
            if(self.check_conn()):
                self.radio.tx(dest_addr=self.dest_addr, data=data_out)
                time.sleep(0.2)
                self.print_packet(self.last_packet)
            time.sleep(1)

    def test_gyro(self):
        '''
        Description:
            Read the XYZ values from the gyroscope.
        '''

        data_out = chr(kStatusUnused) + chr(kTestGyroCmd)

        if(self.check_conn()):
            self.radio.tx(dest_addr=self.dest_addr, data=data_out)
            time.sleep(0.5)

    def test_accel(self):
        '''
        Description:
            Read the XYZ values from the accelerometer.
        '''


        data_out = chr(kStatusUnused) + chr(kTestAccelCmd)

        packets_received = 0
        prev_data = None
        if(self.check_conn()):
            self.radio.tx(dest_addr=self.dest_addr, data=data_out)

    def test_dflash(self):
        '''
        Description:
            Read out a set of strings that have been written to and read from
            memory.
        '''

        data_out = chr(kStatusUnused) + chr(kTestDFlashCmd)
        if(self.check_conn()):
            self.radio.tx(dest_addr=self.dest_addr, data=data_out)

    def test_motor(self, motor_id, time, duty_cycle, direction, return_emf=0):
        '''
        Description:
            Turn on a motor.
        Parameters:
            motor_id    : The motor number to turn on
            time        : The amount of time to turn the motor on for (in
                          seconds)
            duty_cycle  : The duty cycle of the PWM signal used to control the
                          motor in percent (0 - 100) 
            direction   : The direction to spin the motor. There are *three*
                          options for this parameter. 0 - reverse, 1 - forward, 
                          2 high impedance motor controller output = braking
            return_emf  : Send the back emf readings over the radio channel.
        '''

        if direction >= 2:
            direction = 2
        elif direction <= 0:
            direction = 0
        else:
            direction = 1


        if return_emf != 1:
            return_emf = 0

        data_out = chr(kStatusUnused) + chr(kTestMotorCmd) + chr(motor_id) + \
                   chr(time) + chr(duty_cycle) + chr(direction) + \
                   chr(return_emf)
        if(self.check_conn()):
            self.radio.tx(dest_addr=self.dest_addr, data=data_out)

    def test_sma(self, chan_id, time, duty_cycle):
        '''
        Description:
            Turn on an SMA
        Parameters:
            chan_id     : The SMA channel to turn on
            time        : The amount of time to turn the SMA on for (in
                          seconds)
            duty_cycle  : The duty cycle of the PWM signal used to control the
                          SMA in percent (0 - 100)
        '''

        if(duty_cycle < 0 or duty_cycle > 100):
            print("You entered an invalid duty cycle.")
            return

        data_out = chr(kStatusUnused) + chr(kTestSMACmd) + chr(chan_id) + \
                   chr(time) + chr(duty_cycle)

        if(self.check_conn()):
            self.radio.tx(dest_addr=self.dest_addr, data=data_out)


    def print_packet(self, packet):
        '''
        Description:
            Print the contents of a packet to the screen. This function
            will primarily be used for debugging purposes. May need to
            replace print with stdio or stderr to accommodate GUI test
            suite.
        '''
        if(packet is not None):
            print("Received the following: ")
            print("RSSI: " + str(ord(packet.get('rssi'))))
            (src_h, src_l) = unpack('cc', packet.get('source_addr'))
            print("Source Address: 0x%.2X 0x%.2X" % (ord(src_h),
                  ord(src_l)))
            print("ID: " + (packet.get('id')))
            print("Options: " + str(ord(packet.get('options'))))
            rf_data = packet.get('rf_data')
            print("Status Field: " + str(ord(rf_data[0])))
            print("Type Field: " + str(ord(rf_data[1])))
            print("Payload Data: " + ''.join([str(ord(i)) for i in rf_data[2:]]))

    def __del__(self):
        '''
        Description:
            Clean up the connection when the object is deleted.
        '''
        try:
            self.conn.close()
        except AttributeError:
            pass
