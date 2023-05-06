#!/usr/bin/env python3

import rospy
import actionlib
from my_robot_msgs.srv import num_srv
from my_robot_msgs.msg import num_actionAction
from my_robot_msgs.msg import num_actionGoal

class num_srv_and_sac:
    def __init__(self):
        service = rospy.Service("/num_service",num_srv,self.callback_func)
        self.sac = actionlib.SimpleActionClient("/num_sac",num_actionAction)
        self.sac.wait_for_server()

    def callback_func(self,req):
        self.number = req.num
        num_str = bin(self.number)[2:]
        ret_str = "the binary of number "+str(self.number)+" is "+num_str
        return ret_str

    def sendGoal_getResult(self):
        while not rospy.is_shutdown:
            goal = num_actionGoal(self.number)
            self.sac.send_goal(goal)
            rospy.loginfo("goal has been sent")
            self.sac.wait_for_result()
            rospy.loginfo("Result is : "+self.sac.get_result())
              

        


if __name__ == "__main__":
    rospy.init_node("num_srv_and_sac")
    rospy.loginfo("Number server and Simple Action Client has been initiated")
    nsas = num_srv_and_sac()

    rospy.spin()
    