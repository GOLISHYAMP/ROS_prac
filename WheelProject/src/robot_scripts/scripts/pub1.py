#! usr/bin/env python3

import rospy
from std_msgs.msg import Int64
import sys, select, termios, tty




class publish():
    def __init__(self):
        # Define the key mappings
        self.settings = termios.tcgetattr(sys.stdin)
        key_mapping = {
            'w': 1,    # Move forward
            's': 2,   # Move backward
            'a': 3,   # Move Left
            'd': 4,   #Move Right
                'n' : 5,   #Rotate clockwise
                'm' : 6,   # Rotate counterclockwise
                'q' : 7,   #Up & Left
                'e' : 8,   # Up & Right
                'z' : 9,   # Down & Left
                'c' : 10  # Down & Right
        }
        pub = rospy.Publisher("/PressedButton", Int64, queue_size=10)
        try:
            while True:
                key = self.getKey()
                rospy.loginfo(key)
                if key in key_mapping:
                    move = key_mapping[key]

                elif key == 'x':  
                    break

                else:
                    # Stop the robot if any other key is pressed
                    move = 0
                message = Int64()
                message.data = move
                pub.publish(message)

        except Exception as e:
            print(e)

        finally:
            #Stop the robot before exiting
            message = Int64()
            message.data = 0
            pub.publish(message)

        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, self.settings)

    def getKey(self):
    # Function to get the pressed key
        tty.setraw(sys.stdin.fileno())
        select.select([sys.stdin], [], [], 0)
        key = sys.stdin.read(1)
        # key = input()
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, self.settings)
        return key
       

    
if __name__ == "__main__":
    rospy.init_node("publisher_node")
    rospy.loginfo("Starting publisher_node.")
    rospy.loginfo("w : Move Forward")
    rospy.loginfo("s : Move Backward")
    rospy.loginfo("a : Move Left")
    rospy.loginfo("d : Move Right\n")

    rospy.loginfo("n : Rotate Clockwise")
    rospy.loginfo("m : Rotate CounterClockWise\n")

    rospy.loginfo("q : Move Up-Left")
    rospy.loginfo("e : Move Up-Right")
    rospy.loginfo("z : Move Down-Left")
    rospy.loginfo("c : Move Down_Right\n")

    rospy.loginfo("x : Quit\n")

    
    publish()
    

