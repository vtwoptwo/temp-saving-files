#!/usr/bin/env python3

import rospy
import cv2
import cv_bridge
import numpy as np
from sensor_msgs.msg import Image, CameraInfo
from geometry_msgs.msg import Twist

class Follower:
  def __init__(self):
    self.bridge = cv_bridge.CvBridge()
    #cv2.namedWindow("window", 1)
    self.image_sub = rospy.Subscriber('/camera/color/image_raw', Image, self.image_callback)
    self.cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
    self.twist = Twist()
  def image_callback(self, msg):
    image = self.bridge.imgmsg_to_cv2(msg,desired_encoding='bgr8')
    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV) 
    # change below lines to map the color you wanted robot to follow
    lower_yellow = np.array([0, 0, 150]) #white
    upper_yellow = np.array([180, 50, 255]) # white
    mask = cv2.inRange(hsv, lower_yellow, upper_yellow)
    cv2.imwrite('output_image.jpg', mask)
    
    h, w, d = image.shape
    search_top = 3*h/4
    search_bot = 3*h/4 + 20
    mask[int(0):int(search_top), int(0):int(w)] = 0
    mask[int(search_bot):int(h), int(0):int(w)] = 0
    M = cv2.moments(mask)
    if M['m00'] > 0:
      cx = int(M['m10']/M['m00'])
      cy = int(M['m01']/M['m00'])
      #cv2.circle(image, (cx, cy), 20, (0,0,255), -1)
      # CONTROL starts
      err = cx - w/2
      self.twist.linear.x = 0.1
      self.cmd_vel_pub.publish(self.twist)
      # CONTROL ends
    cv2.waitKey(3)

rospy.init_node('follower')
follower = Follower()
rospy.spin()
# END ALL