#! /usr/bin/env python3

import rospy
from rss2_msgsrv_pkg.srv import turtlebot_move_square, turtlebot_move_squareRequest
rospy.init_node('turtlebot_move_square_client')

rospy.wait_for_service('/turtlebot_move_square_service')
turtlebot_service_client = rospy.ServiceProxy('/turtlebot_move_square_service',turtlebot_move_square )
turtlebot_request_instance = turtlebot_move_squareRequest()
turtlebot_request_instance.repetitions = 2
turtlebot_request_instance.sideLength = 1.5

try:
    feedback = turtlebot_service_client(turtlebot_request_instance)
except rospy.ServiceException as e:
    rospy.logwarn("Service call failed: %s"%e)
rospy.loginfo(str(feedback))
rospy.loginfo("Service call completed")
