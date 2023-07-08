#!/usr/bin/env python3

import rospy
from my_robot_msgs.msg import number

class number_pub: 
    def __init__(self):
        message_pub = rospy.Publisher("/num_topic", number, queue_size=10)
        rospy.loginfo("Publishing on num_topic has been started")
        
        rate = rospy.Rate(1)

        while not rospy.is_shutdown():
            ms = number()
            ms.num = rospy.get_param("num_param")
            ms.str = "Number is set to "+ str(ms.num)
            message_pub.publish(ms)
            rate.sleep()
    


if __name__ == "__main__":
    rospy.init_node("number_publisher")
    rospy.loginfo("Number publisher node has been initiated")
    rospy.set_param("num_param",20)
    np = number_pub()
    rospy.spin()

    
    