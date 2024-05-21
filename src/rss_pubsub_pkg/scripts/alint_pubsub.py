#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry



distance = 50  
def callback(msg):
    global distance  
    distance -= msg.pose.pose.position.x

sub = rospy.Subscriber('/odom', Odometry, callback)
rospy.init_node('alint_pubsub')
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
rate = rospy.Rate(1)

while not rospy.is_shutdown():
    move=Twist()
    if distance > 0:
        print("The rem distance is ", distance)
        move.linear.x=0.5
        move.angular.z=0
    else:
        print("The rem distance is 0")
        move.linear.x=0
        move.angular.z=0
    pub.publish(move)
    rate.sleep()



