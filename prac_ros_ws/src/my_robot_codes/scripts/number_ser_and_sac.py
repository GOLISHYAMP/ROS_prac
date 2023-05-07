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
        rospy.loginfo("WAITING FOR SIMPLE ACTION SERVER")
        self.sac.wait_for_server()
        
        

    def callback_func(self,req):
        self.number = req.num
        num_str = bin(self.number)[2:]
        ret_str = "the binary of number "+str(self.number)+" is "+num_str
        return ret_str

    def sendGoal_getResult(self):
        while not rospy.is_shutdown():
            goal = num_actionGoal(self.number)
            self.sac.send_goal(goal,done_cb=self.goal_done,feedback_cb=self.goal_feedb)
            rospy.loginfo("goal has been sent")
            self.sac.wait_for_result()
            rospy.loginfo("Result is : "+str(self.sac.get_result()))

    def goal_done(self,goalStatus,goalResult):
        rospy.loginfo("Goal acheived")
        rospy.loginfo(goalStatus)
        rospy.loginfo(goalResult)
        

    def goal_feedb(self,feedback):
        rospy.loginfo("Feedback received")
        rospy.loginfo(feedback)
        

if __name__ == "__main__":
    rospy.init_node("num_srv_and_sac")
    rospy.loginfo("Number server and Simple Action Client has been initiated")
    nsas = num_srv_and_sac()
    nsas.sendGoal_getResult()
    rospy.spin()
    