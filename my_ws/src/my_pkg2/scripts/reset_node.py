#!/usr/bin/env python3

import rospy

from std_srvs.srv import SetBool

if __name__ == "__main__":
    rospy.init_node("reset_node")
    rospy.loginfo("Reset node is initiated")

    rospy.wait_for_service("/reset_number_count")

    try:
        client = rospy.ServiceProxy("/reset_number_count",SetBool)
        request = client(True)
        rospy.loginfo("counter reset is : "+str(request.success))
        rospy.loginfo("Sentence is : "+str(request.message))
    except rospy.ServiceException as e:
        rospy.logwarn("Service Exception : ",e)
