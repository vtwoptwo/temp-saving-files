import rospy
import cv2
import cv_bridge
import numpy
from sensor_msgs.msg import Image, CameraInfo
from geometry_msgs.msg import Twist
import numpy as np

class Follower:
    def __init__(self):
        self.bridge = cv_bridge.CvBridge()
        #cv2.namedWindow("window", 1)
        self.image_sub = rospy.Subscriber('/camera/color/image_raw', 
                                        Image, self.image_callback)
        self.cmd_vel_pub = rospy.Publisher('/cmd_vel',
                                        Twist, queue_size=1)
        self.twist = Twist()


    def image_callback(self, msg):
        image = self.bridge.imgmsg_to_cv2(msg,desired_encoding='bgr8')
        cv2.imwrite("original.jpg", image)
        hsv_image = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
        cv2.imwrite("hsv_image.jpg", hsv_image)
        lower_white = np.array([0, 0, 180], dtype=np.uint8)
        upper_white = np.array([255, 50, 255], dtype=np.uint8)
        mask = cv2.inRange(hsv_image, lower_white, upper_white)
        cv2.imwrite("masked.jpg", mask)

        res = cv2.bitwise_and(image, image, mask=mask)
        cv2.imwrite("bit.jpg", res)

        res_gray = cv2.cvtColor(res, cv2.COLOR_BGR2GRAY)
        cv2.imwrite("res_grey.jpg", res_gray)
        
        res_edges = cv2.Canny(res_gray, 50, 150)
        cv2.imwrite("edges.jpg", res_edges)

    




rospy.init_node('follower')
follower = Follower()
rospy.spin()
