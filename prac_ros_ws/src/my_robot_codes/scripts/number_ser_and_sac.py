#!/usr/bin/env python3

import rospy
from my_robot_msgs.srv import num_srv

class num_srv_and_sac:
    def __init__(self):
        service = rospy.Service("/num_service",num_srv,self.callback_func)

    def callback_func(self,req):
        self.number = req.num
        num_str = bin(self.number)[2:]
        ret_str = "the binary of number "+str(self.number)+" is "+num_str
        return ret_str


if __name__ == "__main__":
    rospy.init_node("num_srv_and_sac")
    rospy.loginfo("Number server and Simple Action Client has been initiated")
    nsas = num_srv_and_sac()
    rospy.spin()
    