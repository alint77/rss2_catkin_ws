#! /usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
rospy.init_node('alint_publisher')
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
rate = rospy.Rate(1)
move=Twist()
move.linear.x=0
move.linear.y=0

while not rospy.is_shutdown():
    pub.publish(move)
    rate.sleep()

