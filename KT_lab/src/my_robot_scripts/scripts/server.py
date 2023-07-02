#! usr/bin/env python3

import rospy

from my_robot_msgs.srv import signal

def callback(req):
    color = ["RED","ORANGE","GREEN"]
    message = ["Please Stop", "Be Ready", "GO!"]
    return color[req.signal_number],message[req.signal_number]

if __name__ == "__main__":
    rospy.init_node("severNode")
    rospy.loginfo("Server is up!")
    
    server = rospy.Service("/signalService",signal,callback)
    rospy.spin()