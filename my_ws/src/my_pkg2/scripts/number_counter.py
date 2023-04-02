#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int64
from std_srvs.srv import SetBool

counter = 0
pub = None
def call_func(msg):
    global counter
    counter = counter + msg.data
    pub.publish(counter)

def call_client(req):
    global counter
    if(req.data == True):
        counter = 0
        rospy.loginfo("Counter is reseted to 0")
        return True,"counter has been reseted!"
    else:
        return False,"Counter donot reseted!"

if __name__ == "__main__":
    rospy.init_node("number_counter")
    rospy.loginfo("Number counter Node has been started!")
    
    sub = rospy.Subscriber("/number",Int64,call_func)
    pub = rospy.Publisher("/number_count",Int64,queue_size = 10)
    service = rospy.Service("/reset_number_count",SetBool,call_client)
    rospy.spin()

    rospy.loginfo("Number counter node is Stopped!")
