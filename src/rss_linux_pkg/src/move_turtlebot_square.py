#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist
import math

class MoveTurtleBot():

    def __init__(self):
        self.turtlebot_vel_publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
        self.cmd = Twist()
        self.ctrl_c = False
        self.rate = rospy.Rate(1)
        rospy.on_shutdown(self.shutdownhook)

    def publish_once_in_cmd_vel(self):
        """
        This is because publishing in topics sometimes fails the first time you publish.
        In continuos publishing systems there is no big deal but in systems that publish only
        once it IS very important.
        """
        while not self.ctrl_c:
            connections = self.turtlebot_vel_publisher.get_num_connections()
            if connections > 0:
                self.turtlebot_vel_publisher.publish(self.cmd)
                rospy.loginfo("Cmd Published")
                break
            else:
                self.rate.sleep()

    def shutdownhook(self):
        # works better than the rospy.is_shutdown()
        self.stop_turtlebot()
        self.ctrl_c = True

    def stop_turtlebot(self):
        rospy.loginfo("shutdown time! Stop the robot")
        self.cmd.linear.x = 0.0
        self.cmd.angular.z = 0.0
        self.publish_once_in_cmd_vel()

    def move_turtlebot(self, direction, moving_time, linear_speed=0.2):

        if direction == "forward":
            self.cmd.linear.x = -linear_speed
            self.cmd.angular.z = 0

        elif direction == "rotate90":
            angular_speed = math.pi/ 2 / moving_time
            self.cmd.angular.z = angular_speed
            self.cmd.linear.x = 0

        i = 0

        rospy.loginfo("Moving Turtlebot! DIR:"+direction)

        while not self.ctrl_c and i < moving_time:
            self.publish_once_in_cmd_vel()
            i = i+1
            self.rate.sleep()

        self.stop_turtlebot()

if __name__ == '__main__':
    rospy.init_node('move_turtlebot_test', anonymous=True)
    moveturtlebot_object = MoveTurtleBot()
    try:
        moveturtlebot_object.move_turtlebot("forward",3)
        moveturtlebot_object.move_turtlebot("rotate90",3)
        moveturtlebot_object.move_turtlebot("forward",3)
        moveturtlebot_object.move_turtlebot("rotate90",3)
        moveturtlebot_object.move_turtlebot("forward",3)
        moveturtlebot_object.move_turtlebot("rotate90",3)
        moveturtlebot_object.move_turtlebot("forward",3)

    except rospy.ROSInterruptException:
        pass
