#!/usr/bin/env python3

import rospy
import actionlib

from my_robot_msgs.msg import CountUntilAction
from my_robot_msgs.msg import CountUntilGoal

class CountUntilClient:

    def __init__(self):
        self._ac = actionlib.SimpleActionClient('/count_until',CountUntilAction)
        self._ac.wait_for_server()
        rospy.loginfo("Action sever is up, we can send new goals!")
        
    def send_goal_and_get_result(self):
        goal = CountUntilGoal(max_number = 10, wait_duration = 0.5)
        self._ac.send_goal(goal,done_cb = self.done_callback)
        rospy.loginfo("Goal has been sent")
        #self._ac.wait_for_result()
        #rospy.loginfo(self._ac.get_result())
        count = 0
        while not (count == 10):
            print(count)
            count += 1

    def done_callback(self, status, result):
        rospy.loginfo("status is : "+str(status))
        rospy.loginfo("Result is : "+str(result))

if __name__ == '__main__':
    rospy.init_node("count_until_client")
    client = CountUntilClient()
    client.send_goal_and_get_result()
    rospy.spin()
