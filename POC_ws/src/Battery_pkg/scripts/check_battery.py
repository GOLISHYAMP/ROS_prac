#!/usr/bin/env python3

import rospy

from battery_msgs.srv import compute_battery

class check:
    def __init__(self):
        rospy.wait_for_service("/set_led")
        try:
            sett = rospy.ServiceProxy("/set_led",compute_battery)
            response = sett(rospy.get_param("/bat_per"))
            rospy.loginfo(response.set)
        except rospy.ServiceException as e:
            rospy.logwarn("service failed : ",+ str(e))

if __name__ == "__main__":
    rospy.init_node("check_battery")
    rospy.loginfo("Checking battery")
    check()
