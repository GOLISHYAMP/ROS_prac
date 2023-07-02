#!/usr/bin/env python3

import rospy
from my_robot_msgs.msg import signal

if __name__ == "__main__":
    rospy.init_node("signal_publisher")
    rospy.loginfo("Publisher has been started")
    pub = rospy.Publisher("/signal_publisher",signal,queue_size = 10)
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        msg = signal()
        msg.signal_color = "Red"
        msg.signal_number = 1
        pub.publish(msg)
        rate.sleep()
    rospy.loginfo("Publisher has been stopped")

