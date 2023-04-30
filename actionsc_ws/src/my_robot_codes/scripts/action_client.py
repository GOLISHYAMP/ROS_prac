#!/usr/bin/env python

import rospy
import actionlib

from my_robot_msgs.msg import CountUntilAction
from my_robot_msgs.msg import CountUntilGoal

class CountUntilClient:
   
    def __init__(self):
        self._ac = actionlib.ActionClient('/count_until',
            CountUntilAction)
        rospy.loginfo("Waiting for the server!")
        
        self._ac.wait_for_server()
        rospy.loginfo("Action server up, we can send goals.")

    def on_transition(self, goal_handle):    
        if goal_handle.get_comm_state() == 2:
            rospy.loginfo("Goal just went active.")
        if goal_handle.get_comm_state() == 7:
            rospy.loginfo("Goal is DONE")
            rospy.loginfo(goal_handle.get_terminal_state())
            rospy.loginfo(goal_handle.get_result())

    def on_feedback(self, goal_handle, feedback):
        rospy.loginfo("--- Feedback callback")
        rospy.loginfo(feedback)
        

    def send_goal(self, max_number, wait_duration):
        goal = CountUntilGoal()
        goal.max_number = max_number
        goal.wait_duration = wait_duration
        rospy.loginfo("Sending goal")
        goal_handle = self._ac.send_goal(goal,self.on_transition,self.on_feedback)
        return goal_handle

if __name__ == '__main__':
    rospy.init_node('count_until_client')
    client = CountUntilClient()
    goal_handle1 = client.send_goal(15, 0.5)
    goal_handle2 = client.send_goal(12, 0.8)
    rospy.sleep(3.0)
    goal_handle1.cancel()

    rospy.spin()