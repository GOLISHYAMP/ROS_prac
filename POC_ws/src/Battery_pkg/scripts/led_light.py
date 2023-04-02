#!/usr/bin/env python3

import rospy

from battery_msgs.msg import battery_status

from battery_msgs.srv import compute_battery

class led:
    def __init__(self):
        self.LED = [0,0,0]
        self.sub = rospy.Subscriber("/b_status",battery_status,self.call_back)
        self.service = rospy.Service("/set_led",compute_battery,self.call_service)

    def call_back(self,msg):
        rospy.loginfo("Message received")
        rospy.loginfo(msg.battery_percentage)
        if msg.battery_state:
            rospy.loginfo("Battery on CHARGE!")
        else:
            rospy.loginfo("DISCHARGING!")

    def call_service(self,req):
        rospy.loginfo("request recieved")
        if (req.percentage == 0):
            self.LED = [0,0,0]
        elif (req.percentage <= 30):
            self.LED = [1,0,0]
        elif (req.percentage > 30 and req.percentage <= 60):
            self.LED = [1,1,0]
        else:
            self.LED = [1,1,1]
        rospy.loginfo(self.LED)
        return True


if __name__ == "__main__":
    rospy.init_node("Led_light")
    rospy.loginfo("Led light node has been initiated")
    led()
    rospy.spin()
    rospy.loginfo("Led light node has been stopped")
