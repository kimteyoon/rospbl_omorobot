#!/usr/bin/env python

import serial  # for connect between computer&omorobot
import rospy   # to use ROS on python
from time import sleep  # to use sleep(it's like 'delay' from arudino but second)

from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist

import threading

import numpy as np

# Variables
c = 0
cycle_counter = 0
exitThread = False
# ydlidar
def Robot():
    # Set global variables
    global cycle_counter
    global flag_motor_on
    global summ
    global count
    global exitThread
    global c

    range_mean=[]
    count = 0
    summ = 0
    # Initialize 'omoros' node
    rospy.init_node('omoros', anonymous=True)
    #rospy.init_node('ydlidar', anonymous=True)
    # Fetch /global parameters
    param_port_y = '/dev/ydlidar'
    param_port = '/dev/ttyMotor'
    param_baud = 115200
    # Open Serial port with parameter settings
    ser = serial.Serial(param_port, param_baud)
    ser1 = serial.Serial(param_port_y, param_baud)
    def callback(msg):
        global summ
        global count
        global exitThread
        global range_mean
         # Direction of rotation
        exitThread = True
        sleep(0.01)
        count = 0
        summ = 0
        range_mean=[]
       # for x in msg.ranges:
        #    if x < 0.5:
         #       new_range.append(0)
         #   elif x < 1:
         #       new_range.append(1)
         #   elif x < 2:
         #       new_range.append(2)
         #   else:
         #       new_range.append(3)        

        for x in msg.ranges:
            summ = summ + x
            count = count + 1
            if count>47:
                range_mean.append(summ/48)
                count = 0
                summ = 0
        #for x in new_range:

        #print('=========================================')
        #print(len(msg.ranges))
        #print(range_mean)

        #exitThread=False
        exitThread = False
        sleep(0.01)
        #move_omo(range_mean)
        #print(range_mean)
        thread = threading.Thread(target=move_omo, args=(range_mean,))
        thread.start()
        #exitThread=True

    def move_omo(range_C):
        global a
        global b
        global c
        global exitThread
        global range_mean
        #print(range_mean)

        m_s = 0.3
        m_x = 0.6
        
        while not exitThread:
            #print(range_mean)
            print(c)
            if (c < 1000) :
	            if (range_mean[0] <= m_s) or (range_mean[1] <= m_s) or (range_mean[2] <= m_s) or (range_mean[3] <= m_s) or (range_mean[4] <= m_s):
	                a = 0
	                b = 0
	                #c =0
	            elif (range_mean[0] > m_x) and (range_mean[1] > m_x) and (range_mean[2] > m_x) and (range_mean[3] > m_x) and (range_mean[4] > m_x):
	            	a = 50
	            	b = 50
	            	#c = 0
	            elif (range_mean[0] < m_x) and (range_mean[1] < m_x) and (range_mean[2] < m_x) and (range_mean[3] < m_x) and (range_mean[4] < m_x):
	           		a = -50
	           		b = -50
	           		#c = 0 	
	            else :
	            	if (range_mean.index(min(range_mean)) == 0) or (range_mean.index(min(range_mean)) == 1):

	            		a = -(max(range_mean) - min(range_mean))*50
	            		b = (max(range_mean) - min(range_mean))*50
	            		c = c + 1
	            		print("*********************************right******************************")
	            		
	            		
	            	elif (range_mean.index(min(range_mean)) == 3) or (range_mean.index(min(range_mean)) == 4) :
	            		a = (max(range_mean) - min(range_mean))*100
	            		b = -(max(range_mean) - min(range_mean))*100
	            		c = c + 1
	            		print("*********************************left******************************")
	            		

	            	else :
	            		if (range_mean.index(max(range_mean)) == 0) or (range_mean.index(max(range_mean)) == 1):
	            			a = (max(range_mean) - min(range_mean))*100
	            			b = -(max(range_mean) - min(range_mean))*100
	            			#c = 0
	            			
	            		elif (range_mean.index(max(range_mean)) == 3) or (range_mean.index(max(range_mean)) == 4) :
		            		a = -(max(range_mean) - min(range_mean))*100
		            		b = (max(range_mean) - min(range_mean))*100
		            		#c = 0
		            		
		            	else :
		            		a = -50
		            		b = -50		
		            		#c = 0 
		            		
            if (c >=1000):
            	if ((range_mean[0] > range_mean[4])) or ((range_mean[1] > range_mean[3])):
            		a = 0
            		b = -100
            	elif (range_mean[4]< range_mean[0]) or ((range_mean[3] > range_mean[1])):
            		a = -100
            		b = 0
            	cmd = '$CDIFFV,{:.0f},{:.0f}'.format(a, b)
            	ser.write(cmd+"\r"+"\n")
            	sleep(10)
            	c = 0

            if (a > 50) : 
            	a = 50
            	b = -50
            if (b > 50) :
            	b =50	
            	a = -50		
            cmd = '$CDIFFV,{:.0f},{:.0f}'.format(a, b)
            ser.write(cmd+"\r"+"\n")

            if exitThread == True:
            	range_mean=[]
                break


    # Check serial is opened
    if ser.isOpen():
        print("Serial_omo is opened")
        sleep(1)  # wait for 1 secondycle

    #rate = rospy.Rate(rospy.get_param('~hz', 30)) # 30hz
    #rate = rospy.Rate(30)
    while not rospy.is_shutdown():
        #print(flag_motor_on)
        #if cycle_counter % 300 == 0:
        #    flag_motor_on ^= 1
        #rospy.init_node('ydlidar', anonymous=True)
        exitThread = True
        sub = rospy.Subscriber('/scan',LaserScan,callback)
            #print(sub)
            #cmd = '$CDIFFV,{:.0f},{:.0f}'.format(sub, sub)
            #ser.write(cmd+"\r"+"\n") #left = 100, right=0
            # spin() simply keeps python from exiting until this node is stopped
        rospy.spin()
            #rostopic echo /
            #print("test %d" %cycle_counter
        # Keep rate 30hz
    #    rate.sleep()
#main
if __name__ == '__main__':
   try:
      Robot()
   except rospy.ROSInterruptException:
      pass