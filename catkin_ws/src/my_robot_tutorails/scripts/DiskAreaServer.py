#!/usr/bin/env python3

import rospy
from my_robot_msgs.srv import ComputeDiskArea

def callback(req):
    area = 3.14 * req.radius * req.radius
    rospy.loginfo("Area of Disk is : "+str(area))
    return area

if __name__ == "__main__":
    rospy.init_node("disk_area_server")
    rospy.loginfo("Disk Area Server has been initiated!")

    service = rospy.Service("/compute_disk_area",ComputeDiskArea,callback)
    rospy.spin()
