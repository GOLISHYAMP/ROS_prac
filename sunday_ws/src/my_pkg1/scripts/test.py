#!/usr/bin/env python3

import rospy

if __name__ == "__main__":
    rospy.init_node("led_panel")

    led_status = [0,0,0]

    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        rospy.loginfo(led_status)
        rate.sleep()
