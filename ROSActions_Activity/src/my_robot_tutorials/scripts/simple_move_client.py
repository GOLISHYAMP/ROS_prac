#!/usr/bin/env python3

import rospy
import actionlib

from my_robot_msgs.msg import moveAction
from my_robot_msgs.msg import moveResult
from my_robot_msgs.msg import moveGoal

class simple_move_client():
    def __init__(self):
        self._ac = actionlib.SimpleActionClient("/moverobot",moveAction)
        self._ac.wait_for_server()
        rospy.loginfo("Action Server is up and ready to receive goals")
        
    def send_goal_and_get_results(self):
        goal = moveGoal(position = 86, velocity = 5)
        self._ac.send_goal(goal,done_cb=self.done_callback,feedback_cb=self.feedback_callback)
        rospy.loginfo("Goal has been sent")

    def done_callback(self,status,result):
        rospy.loginfo("Status is : "+str(status))
        rospy.loginfo("Result message is : "+str(result.message))
        rospy.loginfo("position is : "+str(result.position))

    def feedback_callback(self,feedback):
        rospy.loginfo("Current position is : "+str(feedback.current_position))

if __name__ == "__main__":
    rospy.init_node("simple_move_client")
    rospy.loginfo("Simple move client has been started")
    smc = simple_move_client()
    smc.send_goal_and_get_results()
    rospy.spin()
