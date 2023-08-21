#! usr/bin/env python3

import rospy
from std_msgs.msg import Int64

class Motors():
    def __init__(self):
        self.speed = 0
    def setSpeed(self,speed):
        self.speed = speed


class subscribe():
    def __init__(self):
        self.frontRight = Motors()
        self.frontLeft = Motors()
        self.backRight = Motors()
        self.backLeft = Motors()
        sub = rospy.Subscriber("/PressedButton", Int64, self.callback)
        rospy.spin()
    
    def callback(self,msg):
        speed = 3000
        if msg.data == 1:
            self.moveForward(speed)
        elif msg.data == 2:
            self.moveBackward(speed)
        elif msg.data == 3:
            self.moveLeft(speed)
        elif msg.data == 4:
            self.moveRight(speed)
        elif msg.data == 5:
            self.rotateCW(speed)
        elif msg.data == 6:
            self.rotateACW(speed)
        elif msg.data == 7:
            self.upLeft(speed)
        elif msg.data == 8:
            self.upRight(speed)
        elif msg.data == 9:
            self.downLeft(speed)
        elif msg.data == 10:
            self.downRight(speed)
        else:
            self.stop()
    
    def moveForward(self,speed):
        self.frontLeft.setSpeed(speed)
        self.frontRight.setSpeed(speed)
        self.backLeft.setSpeed(speed)
        self.backRight.setSpeed(speed)
        print(f"Speeds of Wheels FL: {self.frontLeft.speed} FR: {self.frontRight.speed} BL: {self.backLeft.speed} BR: {self.backRight.speed}")

    def moveBackward(self,speed):
        self.frontLeft.setSpeed(-speed)
        self.frontRight.setSpeed(-speed)
        self.backLeft.setSpeed(-speed)
        self.backRight.setSpeed(-speed)
        print(f"Speeds of Wheels FL: {self.frontLeft.speed} FR: {self.frontRight.speed} BL: {self.backLeft.speed} BR: {self.backRight.speed}")   
        
    def moveRight(self,speed):
        self.frontLeft.setSpeed(speed)
        self.frontRight.setSpeed(-speed)
        self.backLeft.setSpeed(-speed)
        self.backRight.setSpeed(speed)
        print(f"Speeds of Wheels FL: {self.frontLeft.speed} FR: {self.frontRight.speed} BL: {self.backLeft.speed} BR: {self.backRight.speed}")

    def moveLeft(self,speed):
        self.frontLeft.setSpeed(-speed)
        self.frontRight.setSpeed(speed)
        self.backLeft.setSpeed(speed)
        self.backRight.setSpeed(-speed)
        print(f"Speeds of Wheels FL: {self.frontLeft.speed} FR: {self.frontRight.speed} BL: {self.backLeft.speed} BR: {self.backRight.speed}")

    def rotateACW(self,speed):
        self.frontLeft.setSpeed(-speed)
        self.frontRight.setSpeed(speed)
        self.backLeft.setSpeed(-speed)
        self.backRight.setSpeed(speed)
        print(f"Speeds of Wheels FL: {self.frontLeft.speed} FR: {self.frontRight.speed} BL: {self.backLeft.speed} BR: {self.backRight.speed}")
    
    def rotateCW(self,speed):
        self.frontLeft.setSpeed(speed)
        self.frontRight.setSpeed(-speed)
        self.backLeft.setSpeed(speed)
        self.backRight.setSpeed(-speed)
        print(f"Speeds of Wheels FL: {self.frontLeft.speed} FR: {self.frontRight.speed} BL: {self.backLeft.speed} BR: {self.backRight.speed}")

    def upRight(self,speed):
        self.frontLeft.setSpeed(speed)
        self.frontRight.setSpeed(0)
        self.backLeft.setSpeed(0)
        self.backRight.setSpeed(speed)
        print(f"Speeds of Wheels FL: {self.frontLeft.speed} FR: {self.frontRight.speed} BL: {self.backLeft.speed} BR: {self.backRight.speed}")

    def downRight(self,speed):
        self.frontLeft.setSpeed(0)
        self.frontRight.setSpeed(-speed)
        self.backLeft.setSpeed(-speed)
        self.backRight.setSpeed(0)
        print(f"Speeds of Wheels FL: {self.frontLeft.speed} FR: {self.frontRight.speed} BL: {self.backLeft.speed} BR: {self.backRight.speed}") 


    def upLeft(self,speed):
        self.frontLeft.setSpeed(0)
        self.frontRight.setSpeed(speed)
        self.backLeft.setSpeed(speed)
        self.backRight.setSpeed(0)
        print(f"Speeds of Wheels FL: {self.frontLeft.speed} FR: {self.frontRight.speed} BL: {self.backLeft.speed} BR: {self.backRight.speed}") 

    def downLeft(self,speed):
        self.frontLeft.setSpeed(-speed)
        self.frontRight.setSpeed(0)
        self.backLeft.setSpeed(0)
        self.backRight.setSpeed(-speed)
        print(f"Speeds of Wheels FL: {self.frontLeft.speed} FR: {self.frontRight.speed} BL: {self.backLeft.speed} BR: {self.backRight.speed}") 

    def stop(self):
        self.frontLeft.setSpeed(0)
        self.frontRight.setSpeed(0)
        self.backLeft.setSpeed(0)
        self.backRight.setSpeed(0)
        print(f"Speeds of Wheels FL: {self.frontLeft.speed} FR: {self.frontRight.speed} BL: {self.backLeft.speed} BR: {self.backRight.speed}") 


if __name__ == "__main__":
    rospy.init_node("Subscriber_Node")
    rospy.loginfo("subscriber node has been started")
    subscribe()
    
    
    

