#!/usr/bin/env python3

import rospy
from my_robot_msgs.msg import number

class sub_client:
    def __init__(self):
        rospy.Subscriber("/num_topic", number, self.callback_func)
        
    def callback_func(self,msg):
        rospy.loginfo("callback_func started in number sub and client.py")
        
        rospy.loginfo("Recieved number is "+str(msg.num))
        rospy.loginfo("String recieved is "+str(msg.str))
        
        

if __name__ == "__main__":
    rospy.init_node("num_sub_and_client")
    rospy.loginfo("Number Subscriber and client node has been initiated")
    sc = sub_client()
    rospy.spin()
    
    