#!/usr/bin/env python

# import threading
import rospy
import actionlib

from my_robot_msgs.msg import action_csAction
from my_robot_msgs.msg import action_csActionGoal
from my_robot_msgs.msg import action_csFeedback
from my_robot_msgs.msg import action_csResult

class action_server:

    def __init__(self):
        self._as = actionlib.ActionServer("/numActionClient",action_csAction, self.on_goal,auto_start=False)
        self._as.start()
        rospy.loginfo("Action Server has been started.")
        # self._cancel_goals = {}

    
    def on_goal(self, goal_handle):
        rospy.loginfo("Received new goal")
        rospy.loginfo(goal_handle.get_goal())
        rate = rospy.Rate(1)
        
       


if __name__ == '__main__':
    rospy.init_node('count_until_server')

    server = action_server()

    rospy.spin()