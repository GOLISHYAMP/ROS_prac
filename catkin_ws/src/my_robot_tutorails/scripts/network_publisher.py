#!/usr/bin/env python

import rospy
from std_msgs.msg import String

if __name__ == "__main__":
    rospy.init_node("Network_publisher")

    rate = rospy.Rate(2)

