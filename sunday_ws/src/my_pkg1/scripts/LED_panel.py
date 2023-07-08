#!/usr/bin/env python3

import rospy

from my_msgs.srv import SetLed

def Call_back(req):
    if req.state:
        rospy.loginfo("Battery is Empty and Led Panel light number "+str(req.lednum)+" is set to ON")
    else:
        rospy.loginfo("Battery is FULL and Led Panel light number "+str(req.lednum)+" is set to OFF")

    return True
    


if __name__ == "__main__":
    rospy.init_node("LED_Panel")
    rospy.loginfo("Led Panel node is initiated")

    service = rospy.Service("/setled",SetLed,Call_back)
    rospy.loginfo("Service has been started!")
    rospy.spin()
