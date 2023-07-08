#!/usr/bin/env python3
import rospy
from std_msgs.msg import String

if __name__ == "__main__":
    rospy.init_node("practice_publisher")

    pub = rospy.Publisher("/practice",String,queue_size = 10) #here 1arg is topic name and 2arg is type of message, and 3arg is the buffer of 10 to manage any problem
    publish_rate = rospy.get_param("/publish_rate")
    rate = rospy.Rate(publish_rate)
    rospy.set_param("/ros_flag",1)
    string1 = rospy.get_param("/ros_string_display")
    while not rospy.is_shutdown():
        msg = String()
        msg.data = string1
        pub.publish(msg)
        rate.sleep()

    rospy.loginfo("Publisher has been stopped!")
