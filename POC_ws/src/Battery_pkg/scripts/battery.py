#!/usr/bin/env python3

import rospy

from battery_msgs.msg import battery_status

from battery_msgs.srv import compute_battery

from battery_msgs.srv import button

class battery_start:
    def __init__(self):
       self.pub = rospy.Publisher("/b_status",battery_status,queue_size = 10)

       self.service = rospy.Service("/power_on_off",button,self.power)

       self.pub_func(self.pub)

    
    def power(self,req):
        if req.on == 1:
            return 0
        else:
            return 1

    def pub_func(self,pub):
       rate = rospy.Rate(1)
       rate2 = rospy.Rate(0.5)
       while not rospy.is_shutdown():
            msg = battery_status()
            msg.battery_state = rospy.get_param("/button_on_off")
            if msg.battery_state == 1:
                if rospy.get_param("/bat_per") < 100:
                    msg.battery_percentage = rospy.get_param("/bat_per") + 10
                else:
                    msg.battery_percentage = 100
                rospy.set_param("/bat_per",msg.battery_percentage)
                self.pub.publish(msg)
                rate.sleep()
            else:
                if rospy.get_param("/bat_per") > 0:
                    msg.battery_percentage = rospy.get_param("/bat_per") - 10
                else:
                    msg.battery_percentage = 0
                rospy.set_param("/bat_per",msg.battery_percentage)
                self.pub.publish(msg)
                rate2.sleep()



if __name__ == "__main__":
    rospy.init_node("battery")
    rospy.loginfo("Battery node has been initiated")
    rospy.set_param("/bat_per",0)
    rospy.set_param("/button_on_off",0)
    battery_start()
    rospy.loginfo("Battery node is stopped")
    #rospy.spin()
