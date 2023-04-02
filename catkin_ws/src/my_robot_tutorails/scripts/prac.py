#!/usr/bin/env python3

import rospy

if __name__ == "__main__":
    rospy.init_node("practice_node")
    
    rospy.loginfo("This node has been started")

    rospy.sleep(1)
    
    print("Enter the celsius : ")
    n = int(input())
    F = (n*1.8)+32
    rospy.sleep(1)
    print("Fahrenhiet = ",F)
        
    print("Kya re maja aya na")
    rospy.loginfo("Exited")
