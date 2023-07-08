#! usr/bin/env python3

import rospy

from my_robot_msgs.srv import signal


if __name__ == "__main__":
    rospy.init_node("clientNode")
    rospy.loginfo("Client has been started!")
    
    rospy.wait_for_service("/signalService")
    try:
        client = rospy.ServiceProxy("/signalService",signal)
        rate = rospy.Rate(1)
        count = 0
        inc = 0
        while not rospy.is_shutdown():
            count = count%3
            response = client(count)
            rospy.loginfo(f"Color = {response.color}")
            rospy.loginfo(f"Message = {response.message}")
            rate.sleep()
            inc += 1
            if inc % 3 == 0:
                inc = 0
                count += 1

    except rospy.ServiceException as err: 
        rospy.loginfo("Error occured is : "+str(err)) 
