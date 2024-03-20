#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist
import time

class RobotController:
    def __init__(self):
        rospy.init_node('robot_controller', anonymous=True)
        self.cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        self.move_robot()

    def move_robot(self):
        move_cmd = Twist()
        move_cmd.linear.x = 0.5  # linear velocity (m/s)
        move_cmd.angular.z = 0.5  # angular velocity (rad/s)

        rate = rospy.Rate(10)  # 10 Hz

        start_time = time.time()
        while not rospy.is_shutdown() and time.time() - start_time < 10:
            self.cmd_vel_pub.publish(move_cmd)
            rate.sleep()

        # Stop the robot after 10 seconds
        stop_cmd = Twist()
        self.cmd_vel_pub.publish(stop_cmd)

if __name__ == '__main__':
    try:
        RobotController()
    except rospy.ROSInterruptException:
        pass
