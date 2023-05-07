#!/usr/bin/env python3

import rospy
import actionlib

from my_robot_msgs.msg import num_actionAction
from my_robot_msgs.msg import num_actionGoal
from my_robot_msgs.msg import num_actionResult
from my_robot_msgs.msg import num_actionFeedback

class sas_action_client:
    def __init__(self):
        self.increase = 10
        self.sas = actionlib.SimpleActionServer("/num_sac",num_actionAction,execute_cb=self.on_goal,auto_start=False)
        self.sas.start()
        rospy.loginfo("Simple Action server has been started")
        
    def on_goal(self,goal):
        rospy.loginfo("Goal received")
        rospy.loginfo(goal)
        rate = rospy.Rate(1)
        cnt = 0
        number = goal.bin_num
        while not cnt == self.increase:
            cnt += 1
            number += cnt
            percent = (cnt/(self.increase)) * 100
            feedb = num_actionFeedback()
            feedb.percentage_done = percent
            self.sas.publish_feedback(feedb)
            rate.sleep()
        
        res = num_actionResult()
        res.number = bin(number)[2:]
        self.sas.set_succeeded(res)
        rospy.loginfo("Result has been sent")       


if __name__ == "__main__":
    rospy.init_node("num_sas_and_action_client")
    rospy.loginfo("Number SAS and Action Client has been initiated")
    sas = sas_action_client()
    rospy.spin()
    