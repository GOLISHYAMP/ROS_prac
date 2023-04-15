#!/usr/bin/env python3

import rospy
import actionlib

from my_robot_msgs.msg import simple_signalAction
from my_robot_msgs.msg import simple_signalGoal

class simple_signal_client():
    def __init__(self):
        self._ac = actionlib.SimpleActionClient("/simple_signal_action_server",simple_signalAction)
        self._ac.wait_for_server()

    def SendGoal_GetResult(self):
        sig = 0
        while not rospy.is_shutdown():        
            sig = sig % 3
            goal = simple_signalGoal(wait_duration = 5*(sig+1), signal_number = sig+1)
            self._ac.send_goal(goal)
            rospy.loginfo("Goal has been sent")
            self._ac.wait_for_result()
            rospy.loginfo(self._ac.get_result())
            sig += 1


if __name__ == "__main__":
    rospy.init_node("simple_signal_client")
    rospy.loginfo("Simple signalclient has been started")
    client = simple_signal_client()
    client.SendGoal_GetResult()


