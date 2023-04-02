#!/usr/bin/env python3
import rospy
from std_msgs.msg import String

if __name__ == "__main__":
    rospy.init_node("transmitter2")

    rospy.loginfo("Transmitter2 has started publishing bhai kaisa hai bro!")

    pub = rospy.Publisher("/Transmitter1_radio_waves",String,queue_size = 10)
    rate = rospy.Rate(2)

    while not rospy.is_shutdown():
        msg = String()
        msg.data = "Transmitter2 sending radio waves MC catch pakad!"
        pub.publish(msg)
        rate.sleep()

    rospy.loginfo("Transmitter2 ka dukan badh hogaya chola khali karo")
        


