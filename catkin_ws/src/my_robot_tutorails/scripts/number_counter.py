#!/usr/bin/env python3

import rospy

from std_msgs.msg import Int64

counter = 0
pub = None
def call_back(msg):
    global counter
    counter += msg.data
    pub.publish(counter)

if __name__ == "__main__":
    rospy.init_node("number_counter")
    rospy.loginfo("number counter node has been initiated!")

    sub = rospy.Subscriber("/num_pub",Int64,call_back)
    pub = rospy.Publisher("/num_count",Int64,queue_size=10)
    rospy.spin()