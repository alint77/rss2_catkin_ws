#! /usr/bin/env python3
import rospy
from std_msgs.msg import Int32
from geometry_msgs.msg import Twist

def callback(msg):
    print("angular: ", msg.angular)
    print("linear: ", msg.linear)

rospy.init_node('alint_subscriber')
sub = rospy.Subscriber('/cmd_vel', Twist, callback)
rospy.spin()
