#!/usr/bin/env python3
import rospy
from std_msgs.msg import String

def calling_func1(msg):
    rospy.loginfo("message recieve : ")
    rospy.loginfo(msg)

if __name__ == "__main__":
    rospy.init_node("mobile2")

    rospy.loginfo("Mobile2 bhi chalu huha abhi maja ayegena bidu!")
    sub = rospy.Subscriber("/Transmitter1_radio_waves",String,calling_func1)

    rospy.spin()
