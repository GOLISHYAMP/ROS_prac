#!/usr/bin/env python3

import rospy
from my_robot_msgs.msg import signal

def call_back_func(msg):
    if msg.signal_color == "Red":
        rospy.loginfo(msg.signal_color)
        rospy.loginfo("Stop its red signal")
        rospy.loginfo("signal number is "+str(msg.signal_number))

if __name__ == "__main__":
    rospy.init_node("signal_subscriber")
    rospy.loginfo("Signal subscriber is started")
    sub = rospy.Subscriber("/signal_publisher",signal,call_back_func)
    rospy.spin()
