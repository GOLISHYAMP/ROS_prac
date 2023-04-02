#!/usr/bin/env python3

import rospy
from my_robot_msgs.msg import HardwareStatus

if __name__ == "__main__":
    rospy.init_node("hardware_status_publisher")

    rospy.loginfo("Hardware status publisher is initiated")

    pub = rospy.Publisher("/my_robot/hardware_status",HardwareStatus,queue_size = 10)

    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        msg = HardwareStatus()
        msg.temperature = 29
        msg.are_motors_up = True
        msg.debug_message = "Everything is running well"
        pub.publish(msg)
        rate.sleep()
