#!/usr/bin/env python3

import rospy
from my_robot_msgs.srv import sig

def on_call_back(req):
    if req.signal_number == 1:
        signal_color = "Red"
        message = "Stop"
    elif req.signal_number == 2:
        signal_color = "Orange"
        message = "Be ready"
    else:
        signal_color = "Green"
        message = "Go"
    return signal_color,message

if __name__ == "__main__":
    rospy.init_node("sig_server")
    rospy.loginfo("Signal server has been started")
    service = rospy.Service("/signal_service",sig,on_call_back)
    rospy.spin()
