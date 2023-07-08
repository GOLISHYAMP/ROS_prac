#! usr/bin/env python3
import rospy
import actionlib

from my_robot_msgs.msg import simple_actionAction
from my_robot_msgs.msg import simple_actionGoal
# from my_robot_msgs.msg import simple_actionResult

class simple_action_client():
    def __init__(self):
        self._ac = actionlib.SimpleActionClient('/SimpleService',simple_actionAction)
        rospy.loginfo("Simple Action Client has been started")
        rospy.loginfo("Waiting for server")
        self._ac.wait_for_server()



    def sendGoal_getResult(self):
        sig = 0
        # while not rospy.is_shutdown():
        #     sig = sig % 3
        #     goal = simple_actionGoal(wait_duration = 10, signal_number = sig)
        #     self._ac.send_goal(goal, done_cb = self.done_callback, feedback_cb = self.feedback_callback)
        #     rospy.loginfo("Goal has been sent to server")    
        #     # self._ac.wait_for_result() # still waiting for the results my boy
        #     # rospy.loginfo(self._ac.get_result())
        #     sig += 1
        goal = simple_actionGoal(wait_duration = 10, signal_number = sig)
        self._ac.send_goal(goal, done_cb = self.done_callback, feedback_cb = self.feedback_callback)
        rospy.loginfo("Goal has been sent to server")    
    
    def done_callback(self,status,result):
        rospy.loginfo("Status : ")
        rospy.loginfo(status)
        rospy.loginfo("Result : ")
        rospy.loginfo(result)
        

    def feedback_callback(self,feedback):
        rospy.loginfo("feedback : ")
        
        rospy.loginfo(feedback)
        
            



if __name__ == "__main__":
    rospy.init_node("simpleActionClient")
    SAC = simple_action_client()
    SAC.sendGoal_getResult()
    rospy.spin()
