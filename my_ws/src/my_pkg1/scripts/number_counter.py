#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int64

counter = 0
pub = None

def func(num):
    global counter
    rospy.loginfo("number received")
    counter += num.data
    new_msg = Int64()
    new_msg.data = counter
    pub.publish(new_msg)
    


if __name__ == "__main__":
    rospy.init_node("number_counter")
    rospy.loginfo("number_counter ACTIVATED!")

    sub = rospy.Subscriber("/number",Int64,func)
    pub = rospy.Publisher("/number_count",Int64, queue_size = 10)

    rospy.spin()
