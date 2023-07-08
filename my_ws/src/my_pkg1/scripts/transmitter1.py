#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

if __name__ == "__main__":
    rospy.init_node("transmitter1")
    rospy.loginfo("Transmitter1 started publishing bro!")

    pub = rospy.Publisher("/Transmitter1_radio_waves",String,queue_size = 10)

    rate = rospy.Rate(2)
    while not rospy.is_shutdown():
        msg = String()
        msg.data = "Transmitter1 bola hiiii hiii hiii"
        pub.publish(msg)
        rate.sleep()

    rospy.loginfo("Transmitter2 stopped publishing reee!")
