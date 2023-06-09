#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def callback_receive_radio_data(m):
    rospy.loginfo("Message received : ")
    rospy.loginfo(m)

if __name__ == "__main__":
    rospy.init_node("smartphone",anonymous = True)

    sub = rospy.Subscriber("/robot_news_radio",String,callback_receive_radio_data)

    rospy.spin()

