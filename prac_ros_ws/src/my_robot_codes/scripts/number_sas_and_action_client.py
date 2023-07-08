#!/usr/bin/env python3

import rospy
import actionlib

from my_robot_msgs.msg import num_actionAction
from my_robot_msgs.msg import num_actionGoal
from my_robot_msgs.msg import num_actionResult
from my_robot_msgs.msg import num_actionFeedback

from my_robot_msgs.msg import action_csAction
from my_robot_msgs.msg import action_csActionGoal

class sas_action_client:
    def __init__(self):
        self.increase = 10
        self.sas = actionlib.SimpleActionServer("/num_sac",num_actionAction,execute_cb=self.on_goal,auto_start=False)
        self.sas.start()
        rospy.loginfo("Simple Action server has been started")
        self._ac = actionlib.ActionClient("/numActionClient",action_csAction)
        rospy.loginfo("Waiting for Action server")
        
        self._ac.wait_for_server()
        
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

    def send_goal(self):
        goal = action_csActionGoal()
        goal.num = self.increase
        goal_handle = self._ac.send_goal(goal,transition_cb=self.trans_callback,feedback_cb=self.feedb)
        return goal_handle

    def trans_callback(self,goal_handle):
        if goal_handle.get_comm_state() == 2:
            rospy.loginfo("Goal just went active")
        if goal_handle.get_comm_state() == 7:
            rospy.loginfo("Goal is Done")
            rospy.loginfo(goal_handle.get_terminal_state())
            rospy.loginfo(goal_handle.get_result())
            
            
    def feedb(self,goal_handle,feedback):
        rospy.loginfo(goal_handle)
        rospy.loginfo(feedback)


if __name__ == "__main__":
    rospy.init_node("num_sas_and_action_client")
    rospy.loginfo("Number SAS and Action Client has been initiated")
    sas = sas_action_client()
    sas.send_goal()
    rospy.spin()
    