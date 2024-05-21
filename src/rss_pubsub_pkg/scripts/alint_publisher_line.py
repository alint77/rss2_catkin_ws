#! /usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
import sys
import tty
import termios
rospy.init_node('alint_publisher')
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
rate = rospy.Rate(1)
move=Twist()
move.linear.x=0
move.angular.z=0
move.linear.y=0

while not rospy.is_shutdown():
    def get_key():
        fd = sys.stdin.fileno()
        old_settings = termios.tcgetattr(fd)
        try:
            tty.setraw(sys.stdin.fileno())
            ch = sys.stdin.read(1)
        finally:
            termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
        return ch

    while True:
        key = get_key()
        if key == 's':
            move.linear.x = 0
            move.angular.z = 0
            break
        if key == 'w':
            move.linear.x = 0.4
            move.linear.y = 0.4
            move.angular.z = 0
            break
        if key == '\x03':
            rospy.signal_shutdown("SIGINT received")
            break
    pub.publish(move)
    rate.sleep()

