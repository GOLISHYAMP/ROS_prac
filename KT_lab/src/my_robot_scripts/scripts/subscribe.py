#! usr/bin/env python3
import rospy
from my_robot_msgs.msg import robot

def callback(msg):
    li = ["[ ]","[ ]","[ ]"]
    li[msg.signal_number] = li[msg.signal_number].replace(" ","*")
    rospy.loginfo(''.join(li))
    rospy.loginfo(msg.message)
    
    
    

if __name__ == "__main__":
    rospy.init_node("subNode")
    rospy.loginfo("Subscriber has been started")
    
    sub = rospy.Subscriber("/signal_status", robot, callback)
    rospy.spin()
