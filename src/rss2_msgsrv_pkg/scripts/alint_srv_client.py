#! /usr/bin/env python3

import rospy
from rss2_msgsrv_pkg.srv import srv_turtlebot_move, srv_turtlebot_moveRequest
rospy.init_node('turtlebot_move_client')

rospy.wait_for_service('/turtlebot_move_service')
turtlebot_service_client = rospy.ServiceProxy('/turtlebot_move_service', srv_turtlebot_move)
turtlebot_request_instance = srv_turtlebot_moveRequest()
turtlebot_request_instance.duration = 30
feedback = turtlebot_service_client(turtlebot_request_instance)

rospy.loginfo(str(feedback))
rospy.loginfo("Service call completed")
