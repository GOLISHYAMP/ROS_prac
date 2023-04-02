#!/usr/bin/env python3

import rospy

from my_msgs.srv import SetLed

if __name__ == "__main__":
    rospy.init_node("Battery")
    rospy.loginfo("Battery node has been initiated")
    rospy.wait_for_service("/setled")
    
    try:
        client = rospy.ServiceProxy("/setled",SetLed)
        rate = rospy.Rate(1)
        counter = 0
        flag = 0
        while not rospy.is_shutdown():
            if counter == 3 and flag == 0:
                result = client(3,True)
                flag = 1
                counter = 0
            if counter == 7 and flag == 1:
                result = client(3,False)
                flag = 0
                counter = 0
            counter += 1
            rate.sleep()
            

    except rospy.ServiceException as e:
        rospy.loginfo("Service failed : "+str(e))
