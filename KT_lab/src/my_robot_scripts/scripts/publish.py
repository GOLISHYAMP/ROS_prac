#! usr/bin/env python3

import rospy
from my_robot_msgs.msg import robot

if __name__ == "__main__":
    rospy.init_node("pubNode")
    pub = rospy.Publisher("/signal_status", robot, queue_size=10)
    rate = rospy.Rate(1)
    mg = ["Please Stop","Get Ready", "GO"]
    count = 0
    sn = 0
    while not rospy.is_shutdown():
        msg = robot()
        if count%3 == 0:
            count = 0
            sn = (sn+1)%3
        msg.signal_number = sn
        msg.message = mg[sn]
        pub.publish(msg)
        count += 1
        rate.sleep()
    rospy.rospy.loginfo("Publisher has been stopped")
    
    
