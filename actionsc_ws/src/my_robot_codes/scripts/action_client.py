#!/usr/bin/env python3

import rospy
import actionlib

from my_robot_msgs.msg import CountUntilAction
from my_robot_msgs.msg import CountUntilGoal

class CountUntilClient:

    def __init__(self):
        self._ac = actionlib.ActionClient("/count_until",CountUntilAction)
        self._ac.wait_for_server()
        rospy.loginfo("Action server is up and ready to receive goals")

    def send_goal(self,max_number, wait_duration)
        goal = CountUntilGoal()
        goal.max_number = max_number
        goal.wait_duration = wait_duration
        rospy.loginfo("goal send")
        goal_handle = self._ac.send_goal

if __name__ == "__main__":
    rospy.init_node("count_until_client")
    client = CountUntilClient()
    client.send_goal(8,0.5)
    rospy.spin()
