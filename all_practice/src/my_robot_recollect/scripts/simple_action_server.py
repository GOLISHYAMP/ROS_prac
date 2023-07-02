#!/usr/bin/env python3

import rospy
import actionlib

from my_robot_msgs.msg import simple_signalGoal
from my_robot_msgs.msg import simple_signalAction
from my_robot_msgs.msg import simple_signalResult

class simple_signal_server():
    def __init__(self):
        self._as = actionlib.SimpleActionServer("/simple_signal_action_server",simple_signalAction,execute_cb = self.on_goal,auto_start = False)
        self._as.start()
        rospy.loginfo("Simple Signal Server Started")

    def on_goal(self,goal):
        rospy.loginfo("Goal recieved")
        rospy.loginfo(goal)

        rate = rospy.Rate(1)
        waited = 0
        
        li = ["Red Color","Orange Color","Green Color"]
        rospy.loginfo(li[goal.signal_number - 1])
        while (waited < goal.wait_duration):
            waited += 1
            rospy.loginfo(waited)
            rate.sleep()
        
        result = simple_signalResult()
        result.waited_duration = waited
        

        rospy.loginfo("goal has been sent")
        self._as.set_succeeded(result)






if __name__ == "__main__":
    rospy.init_node("simple_signal_server")
    rospy.loginfo("Simple signal server node has been initiated")
    server = simple_signal_server()
    rospy.spin()
