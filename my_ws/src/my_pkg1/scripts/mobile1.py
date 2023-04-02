#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def calling_func(msg):
    rospy.loginfo("Message recieved: ")
    rospy.loginfo(msg)

if __name__ == "__main__":
    rospy.init_node("Mobile1")
    rospy.loginfo("Mobile1 chalu hogaya chalo abhi shuru hoga!")
    rospy.sleep(1)

    sub = rospy.Subscriber("/Transmitter1_radio_waves",String,calling_func)

    rospy.spin()
