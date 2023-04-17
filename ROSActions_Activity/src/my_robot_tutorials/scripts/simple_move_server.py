#!/usr/bin/env python3

import rospy
import actionlib

from my_robot_msgs.msg import moveAction
from my_robot_msgs.msg import moveResult
from my_robot_msgs.msg import moveGoal
#from my_robot_msgs.msg import moveAction

class simple_move_server():
    def __init__():
        server = actionlib.SimpleActionServer("/moverobot",moveAction,execute_cb = on_goal,auto_start = False) 




if __name__ == "__main__":
    rospy.init_node("Simple_server_node")
    rospy.loginfo("Simple server node has been started")
    sms = simple_move_server()

