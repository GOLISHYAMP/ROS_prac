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

    # def on_goal(self,goal): 
    #     rospy.loginfo("Goal has been received")
    #     self.position = goal.position
    #     self.velocity = goal.velocity
    #     rate = rospy.Rate(self.velocity)
    #     feedback = moveFeedback()
    #     if self.position < self.current_position:
    #         while self.position < self.current_position:
    #             self.current_position -= 1
    #             feedback.current_position = self.current_position
    #             self._as.publish_feedback(feedback)
    #             rate.sleep()
    #     elif self.position > self.current_position:
    #         while self.position > self.current_position:
    #             self.current_position += 1
    #             feedback.current_position = self.current_position
    #             self._as.publish_feedback(feedback)
    #             rate.sleep()
    #     else:
    #         feedback.current_position = self.current_position
    #         self._as.publish_feedback(feedback)
    #     result = moveResult()
    #     result.message = "Goal is reached"
    #     result.position = self.current_position
    #     rospy.loginfo("Result has been sent from server to client")
    #     self._as.set_succeeded(result)

    def on_goal(self,goal): 
        rospy.loginfo("Goal has been received")
        self.position = goal.position
        self.velocity = goal.velocity
        rate = rospy.Rate(1)
        feedback = moveFeedback()

        success = False
        preempted = False

        while not rospy.is_shutdown() and not preempted and not success:
            self.diff = abs(self.position - self.current_position)
            if self.diff > 40:
                break
            if self.diff == 0:
                success = True
            elif self.position > self.current_position:
                if self.diff < self.velocity:
                    self.current_position += self.diff
                else:
                    self.current_position += self.velocity
            else:
                if self.diff < self.velocity:
                    self.current_position -= self.diff
                else:
                    self.current_position -= self.velocity
            feedback.current_position = self.current_position
            self._as.publish_feedback(feedback)
            rate.sleep()
            if self._as.is_preempt_requested():
                preempted = True

        result = moveResult()
        if preempted:
            rospy.loginfo("hello there is Preempted!")
            result.message = "Goal is Cancelled"
            result.position = self.current_position
            rospy.loginfo("Result has been sent from server to client")
            self._as.set_preempted(result)
        elif success:
            rospy.loginfo("hello there U got Success!")
            result.message = "Goal has been reached!"
            result.position = self.current_position
            rospy.loginfo("Result has been sent from server to client")
            self._as.set_succeeded(result)
        else:
            rospy.loginfo("Are YAAR petrol katam hojayega!")
            result.message = "Goal has been aborted"
            result.position = self.current_position
            rospy.loginfo("Result has been sent from server to client")
            self._as.set_aborted(result)
        
        self.current_position = 50
        

        
        

        




if __name__ == "__main__":
    rospy.init_node("Simple_server_node")
    rospy.loginfo("Simple server node has been started")
    sms = simple_move_server()
    # rospy.spin()
