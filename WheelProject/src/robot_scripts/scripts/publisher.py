#! usr/bin/env python3

import rospy
from std_msgs.msg import Int64
import sys, select, termios, tty




class publish():
    def __init__(self):
        # Define the key mappings
        self.settings = termios.tcgetattr(sys.stdin)
        key_mapping = {
            '\x1b[A': 1,    # Move forward
            '\x1b[B': 2,   # Move backward
            '\x1b[C': 3,   # Rotate clockwise
            '\x1b[D': 4,
                'aaa' : 5,
                'ccc' : 6,   # Rotate counterclockwise
                'qqq' : 7,
                'www' : 8,
                'eee' : 9,
                'rrr' : 10,
        }
        pub = rospy.Publisher("/PressedButton", Int64, queue_size=10)
        try:
            while True:
                key = self.getKey()
                rospy.loginfo(key)
                if key in key_mapping:
                    move = key_mapping[key]

                elif key == 'ddd':  
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
        key = sys.stdin.read(3)
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, self.settings)
        return key
       

    
if __name__ == "__main__":
    rospy.init_node("publisher_node")
    rospy.loginfo("Starting publisher_node.")
    publish()
    

