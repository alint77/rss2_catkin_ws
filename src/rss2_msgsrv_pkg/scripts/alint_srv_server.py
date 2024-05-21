#! /usr/bin/env python3
import rospy

from rss2_msgsrv_pkg.srv import srv_turtlebot_move, srv_turtlebot_moveResponse
from geometry_msgs.msg import Twist

def my_callback(request):
    rospy.loginfo("The Service move_turtlebot has been called")

    phase1_vels = Twist()
    phase1_vels.linear.x = 0.2
    phase1_vels.angular.z = 0.2

    phase2_vels = Twist()
    phase2_vels.linear.x = 0
    phase2_vels.angular.z = 0

    phase3_vels = Twist()
    phase3_vels.linear.x = 0.2
    phase3_vels.angular.z = 0

    finishing_vels = Twist()
    finishing_vels.linear.x = 0
    finishing_vels.angular.z = 0

    total_time = 0
    phase1_circling_time = request.duration / 1.5
    phase2_stopping_time = phase1_circling_time + (request.duration / 6)
    phase3_x_move_time = phase2_stopping_time + (request.duration / 6)

    while total_time <= request.duration:
        while total_time <= phase1_circling_time:
            alint_pub.publish(phase1_vels)
            rospy.loginfo(" *moving in a circle* ")
            rospy.loginfo('time: %d', total_time)
            rate.sleep()
            total_time += 1
        while total_time <= phase2_stopping_time:
            alint_pub.publish(phase2_vels)
            rospy.loginfo(" *stopped* ")
            rospy.loginfo('time: %d', total_time)
            rate.sleep()
            total_time += 1
        while total_time <= phase3_x_move_time:
            alint_pub.publish(phase3_vels)
            rospy.loginfo(" *moving in x axis* ")
            rospy.loginfo('time: %d', total_time)
            rate.sleep()
            total_time += 1
        alint_pub.publish(finishing_vels)
        rospy.loginfo('finished')
        rospy.loginfo('time: %d', total_time)
        rate.sleep()
        total_time += 1
    alint_pub.publish(finishing_vels)
    rate.sleep()
    return srv_turtlebot_moveResponse(True)

rospy.init_node('turtlebot_move_server')
alint_service = rospy.Service('/turtlebot_move_service', srv_turtlebot_move, my_callback)
alint_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
rate = rospy.Rate(1)
rospy.loginfo("Service /turtlebot_move_service Ready")
rospy.spin()
