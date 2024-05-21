#! /usr/bin/env python3

import rospy
from rss2_msgsrv_pkg.msg import date_cmd_vel

def callback(msg):
    rospy.loginfo("Received: %s", msg.alint_date)
    rospy.loginfo("Received: %s", msg.alint_cmd_vel)
rospy.init_node('alint_msg_sub')
sub = rospy.Subscriber('/alint_topic', date_cmd_vel, callback)
rospy.spin()