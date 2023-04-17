#!/usr/bin/env python3

import rospy
import actionlib

from my_robot_msgs.msg import moveAction
from my_robot_msgs.msg import moveResult
# from my_robot_msgs.msg import moveGoal
from my_robot_msgs.msg import moveFeedback

class simple_move_server():
    def __init__(self):
        self._as = actionlib.SimpleActionServer("/moverobot",moveAction,execute_cb = self.on_goal,auto_start = False)
        self._as.start()
        rospy.loginfo("Simple Action Server has been started")
        self.current_position = 50

    def on_goal(self,goal): 
        rospy.loginfo("Goal has been received")
        self.position = goal.position
        self.velocity = goal.velocity
        rate = rospy.Rate(self.velocity)
        feedback = moveFeedback()
        if self.position < self.current_position:
            while self.position < self.current_position:
                self.current_position -= 1
                feedback.current_position = self.current_position
                self._as.publish_feedback(feedback)
                rate.sleep()
        elif self.position > self.current_position:
            while self.position > self.current_position:
                self.current_position += 1
                feedback.current_position = self.current_position
                self._as.publish_feedback(feedback)
                rate.sleep()
        else:
            feedback.current_position = self.current_position
            self._as.publish_feedback(feedback)
        result = moveResult()
        result.message = "Goal is reached"
        result.position = self.current_position
        rospy.loginfo("Result has been sent from server to client")
        self._as.set_succeeded(result)

        




if __name__ == "__main__":
    rospy.init_node("Simple_server_node")
    rospy.loginfo("Simple server node has been started")
    sms = simple_move_server()
    rospy.spin()
