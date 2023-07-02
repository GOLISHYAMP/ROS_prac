#!/usr/bin/env python3

import rospy
from my_robot_msgs.srv import sig

if __name__ == "__main__":
    rospy.init_node("signal_client")
    rospy.loginfo("signal client has been started")

    rospy.wait_for_service("/signal_service")

    try:
        client = rospy.ServiceProxy("/signal_service",sig)
        rate = rospy.Rate(1/5)
        count = 0
        while not rospy.is_shutdown():
            count = count % 3
            response = client(count+1)
            rospy.loginfo(response.signal_color)
            rospy.loginfo(response.message)
            count += 1
            rate.sleep()

        
    except rospy.ServiceException as err:
        rospy.loginfo("Error occured is : "+str(err))
