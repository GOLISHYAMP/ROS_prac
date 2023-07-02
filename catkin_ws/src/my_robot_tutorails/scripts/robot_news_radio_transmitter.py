#!/usr/bin/env python3
import rospy
from std_msgs.msg import String

if __name__ == "__main__":
    rospy.init_node("robot_news_radio_transmitter", anonymous = True)

    pub = rospy.Publisher("/robot_news_radio",String,queue_size = 10) #here 1arg is topic name and 2arg is type of message, and 3arg is the buffer of 10 to manage any problem
    rate = rospy.Rate(2)

    while not rospy.is_shutdown():
        msg = String()
        msg.data = "Kya public sab thik haina, Upun ka naam Shyam Goli"
        pub.publish(msg)
        rate.sleep()

    rospy.loginfo("Publisher has been stopped!")
