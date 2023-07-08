#!/usr/bin/env python3

import rospy

from std_msgs.msg import Int64

if __name__ == "__main__":
    rospy.init_node("number_publisher")
    rospy.loginfo("number publisher node has been initiated!")

    pub = rospy.Publisher("/num_pub", Int64, queue_size = 10)
    
    rate = rospy.Rate(rospy.get_param("/number_publish_frequency"))

    while not rospy.is_shutdown():
        msg = Int64()
        msg.data = rospy.get_param("/number_to_publish")
        pub.publish(msg)
        rate.sleep()
    
