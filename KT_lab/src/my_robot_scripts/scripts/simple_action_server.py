#! usr/bin/env python3
import rospy
import actionlib

from my_robot_msgs.msg import simple_actionAction
from my_robot_msgs.msg import simple_actionFeedback
from my_robot_msgs.msg import simple_actionResult
# from my_robot_msgs.msg import simple_actionGoal

class simple_action_server():
    def __init__(self):
        self._as = actionlib.SimpleActionServer("/SimpleService",simple_actionAction,execute_cb = self.on_goal,auto_start = False)
        self._as.start()

    def on_goal(self,goal):
        rospy.loginfo("Goal has been received")
        rospy.loginfo(goal)
        waited = 0
        signal = ["[ ]","[ ]","[ ]"]
        color = ["RED","ORANGE","GREEN"]
        signal[goal.signal_number] = signal[goal.signal_number].replace(" ","*")
        rate = rospy.Rate(1)
        feedback = simple_actionFeedback()
        while waited < goal.wait_duration:
            rospy.loginfo("".join(signal))
            rospy.loginfo(color[goal.signal_number])
            waited += 1
            feedback.percentage = (float(waited)/float(goal.wait_duration))*100
            self._as.publish_feedback(feedback)
            rate.sleep()
            
        result = simple_actionResult()
        result.waited_duration = waited
        rospy.loginfo("Result has been sent to client")
        self._as.set_succeeded(result)
        
    

if __name__ == "__main__":
    rospy.init_node("simpleActionServer")
    SAS = simple_action_server()
    rospy.loginfo("Simple Action server has been started!")
    rospy.spin()
    
