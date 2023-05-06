#!/usr/bin/env python3

import rospy
from my_robot_msgs.msg import number
from my_robot_msgs.srv import num_srv

class sub_client:
    def __init__(self):
        self.number = 0
        rospy.Subscriber("/num_topic", number, self.callback_func)
        rospy.loginfo("Waiting for the server")
        rospy.wait_for_service("/num_service")
        self.call_ser_found()
        
        
    def callback_func(self,msg):
        # rospy.loginfo("callback_func started in number sub and client.py")
        self.number = msg.num
        rospy.loginfo("Recieved number is "+str(msg.num))
        # rospy.loginfo("String recieved is "+str(msg.str))

    def call_ser_found(self):
        try:
            client = rospy.ServiceProxy("/num_service",num_srv)
            rate = rospy.Rate(1)

            while not rospy.is_shutdown():
                response = client(self.number)
                rospy.loginfo("the response received from the server is "+ response.str)
                rate.sleep()
        except rospy.ServiceException as err:
            rospy.logwarn("Service error : "+str(err))        
        
        
        

if __name__ == "__main__":
    rospy.init_node("num_sub_and_client")
    rospy.loginfo("Number Subscriber and client node has been initiated")
    sc = sub_client()
    rospy.spin()
    
    