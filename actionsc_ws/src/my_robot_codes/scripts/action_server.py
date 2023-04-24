#!/usr/bin/env python3

import rospy
import actionlib

from my_robot_msgs.msg import CountUntilAction
from my_robot_msgs.msg import CountUntilGoal
from my_robot_msgs.msg import CountUntilResult
from my_robot_msgs.msg import CountUntilFeedback

class CountUntilServer:
    def __init__(self):
        self._as = actionlib.ActionServer('/count_until',CountUntilAction,self.on_goal,self.on_cancel,auto_start = False)
        self._as.start()

        rospy.loginfo("Action Server has been started!")

    def process_goal(self,goal_handle):
        rospy.loginfo("Processing goal")
        goal = goal_handle.get_goal()
        max_number = goal.max_number
        max_duration = goal.max_duration
        rospy.sleep(1)
        goal_handle.set_succeeded()

    def on_goal(self,goal_handle):
        rospy.loginfo("Received new goal")
        rospy.loginfo(goal_handle.get_goal())
        self.process_goal(goal_handle)

    def on_cancel(self,goal_handle):
        rospy.loginfo("Requested for cancel received")

if __name__ == "__main__":
    rospy.init_node("count_until_server")

    server = CountUntilServer()

    rospy.spin()

