#! /usr/bin/env python3

import rospy
from rss2_msgsrv_pkg.msg import date_cmd_vel
from geometry_msgs.msg import Twist

from datetime import datetime

rospy.init_node('alint_msg_pub')

msg = date_cmd_vel()
msg.alint_date = str(datetime.now())
msg.alint_cmd_vel.linear.x = 0.5
msg.alint_cmd_vel.angular.z = 0.1

pub = rospy.Publisher('/alint_topic', date_cmd_vel, queue_size=1)
rate = rospy.Rate(1)
while not rospy.is_shutdown():
    pub.publish(msg)
    rate.sleep()

rospy.spin()


