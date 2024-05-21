#! /usr/bin/env python3

import rospy
import math
from rss2_msgsrv_pkg.srv import turtlebot_move_square, turtlebot_move_squareResponse
from geometry_msgs.msg import Twist

def move_square(sideLength):

    # Create a publisher to send velocity commands
    velocity_publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=1)

    # Create a Twist message
    vel_msg = Twist()
    linear_velocity = 0.2
    angular_velocity = 0.1

    # Move in a square pattern
    for _ in range(4):
        # Move straight
        vel_msg.linear.x = linear_velocity
        vel_msg.angular.z = 0.0
        t0 = rospy.Time.now().to_sec()
        while rospy.Time.now().to_sec() - t0 <= sideLength / linear_velocity:
            velocity_publisher.publish(vel_msg)

        vel_msg.linear.x = 0.0
        vel_msg.angular.z = angular_velocity
        t0 = rospy.Time.now().to_sec()
        while rospy.Time.now().to_sec() - t0 <= math.pi/2 / angular_velocity:
            velocity_publisher.publish(vel_msg)

    # Stop the robot
    vel_msg.linear.x = 0.0
    vel_msg.angular.z = 0.0
    velocity_publisher.publish(vel_msg)

def callback(msg):
    try:
        while not rospy.is_shutdown():
            sideLength = msg.sideLength
            repetitions = msg.repetitions
            rospy.loginfo("Received request to move turtlebot in a square of side length %f for %d repetitions", sideLength, repetitions)
            for i in range(repetitions):
                rospy.loginfo("Moving turtlebot in a square for repetition %d", i+1)
                move_square(sideLength)
            return turtlebot_move_squareResponse(True)
    except Exception as e:
        rospy.logerr("Error occurred while moving turtlebot in a square: %s", str(e))
        return turtlebot_move_squareResponse(False)

rospy.init_node('turtlebot_move_square_server')
alint_service = rospy.Service('/turtlebot_move_square_service', turtlebot_move_square, callback) 
rate = rospy.Rate(1)
rospy.loginfo("Turtlebot move square server started")
rospy.spin()

