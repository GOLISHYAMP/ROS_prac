#!/usr/bin/env python3

import rospy

from battery_msgs.srv import button

class on_off:
    def __init__(self):
        rospy.wait_for_service("/power_on_off")
        try:
            service = rospy.ServiceProxy("/power_on_off",button)
            response = service(rospy.get_param("/button_on_off"))
            rospy.set_param("/button_on_off",response)
        except rospy.ServiceException as e:
            rospy.loginfo("Service failed : "+str(e))

if __name__ == "__main__":
    rospy.init_node("power_on_off")
    rospy.loginfo("power_on_off node is initiated")
    on_off()
    rospy.spin()
