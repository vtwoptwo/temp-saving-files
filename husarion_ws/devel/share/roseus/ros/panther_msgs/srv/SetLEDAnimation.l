;; Auto-generated. Do not edit!


(when (boundp 'panther_msgs::SetLEDAnimation)
  (if (not (find-package "PANTHER_MSGS"))
    (make-package "PANTHER_MSGS"))
  (shadow 'SetLEDAnimation (find-package "PANTHER_MSGS")))
(unless (find-package "PANTHER_MSGS::SETLEDANIMATION")
  (make-package "PANTHER_MSGS::SETLEDANIMATION"))
(unless (find-package "PANTHER_MSGS::SETLEDANIMATIONREQUEST")
  (make-package "PANTHER_MSGS::SETLEDANIMATIONREQUEST"))
(unless (find-package "PANTHER_MSGS::SETLEDANIMATIONRESPONSE")
  (make-package "PANTHER_MSGS::SETLEDANIMATIONRESPONSE"))

(in-package "ROS")





(defclass panther_msgs::SetLEDAnimationRequest
  :super ros::object
  :slots (_animation _repeating ))

(defmethod panther_msgs::SetLEDAnimationRequest
  (:init
   (&key
    ((:animation __animation) (instance panther_msgs::LEDAnimation :init))
    ((:repeating __repeating) nil)
    )
   (send-super :init)
   (setq _animation __animation)
   (setq _repeating __repeating)
   self)
  (:animation
   (&rest __animation)
   (if (keywordp (car __animation))
       (send* _animation __animation)
     (progn
       (if __animation (setq _animation (car __animation)))
       _animation)))
  (:repeating
   (&optional (__repeating :null))
   (if (not (eq __repeating :null)) (setq _repeating __repeating)) _repeating)
  (:serialization-length
   ()
   (+
    ;; panther_msgs/LEDAnimation _animation
    (send _animation :serialization-length)
    ;; bool _repeating
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; panther_msgs/LEDAnimation _animation
       (send _animation :serialize s)
     ;; bool _repeating
       (if _repeating (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; panther_msgs/LEDAnimation _animation
     (send _animation :deserialize buf ptr-) (incf ptr- (send _animation :serialization-length))
   ;; bool _repeating
     (setq _repeating (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass panther_msgs::SetLEDAnimationResponse
  :super ros::object
  :slots (_success _message ))

(defmethod panther_msgs::SetLEDAnimationResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass panther_msgs::SetLEDAnimation
  :super ros::object
  :slots ())

(setf (get panther_msgs::SetLEDAnimation :md5sum-) "4051ed2a8439003711f44f890ff30ab8")
(setf (get panther_msgs::SetLEDAnimation :datatype-) "panther_msgs/SetLEDAnimation")
(setf (get panther_msgs::SetLEDAnimation :request) panther_msgs::SetLEDAnimationRequest)
(setf (get panther_msgs::SetLEDAnimation :response) panther_msgs::SetLEDAnimationResponse)

(defmethod panther_msgs::SetLEDAnimationRequest
  (:response () (instance panther_msgs::SetLEDAnimationResponse :init)))

(setf (get panther_msgs::SetLEDAnimationRequest :md5sum-) "4051ed2a8439003711f44f890ff30ab8")
(setf (get panther_msgs::SetLEDAnimationRequest :datatype-) "panther_msgs/SetLEDAnimationRequest")
(setf (get panther_msgs::SetLEDAnimationRequest :definition-)
      "panther_msgs/LEDAnimation animation
bool repeating

================================================================================
MSG: panther_msgs/LEDAnimation
uint16 E_STOP = 0
uint16 READY = 1
uint16 ERROR = 2
uint16 MANUAL_ACTION = 3
uint16 AUTONOMOUS_ACTION = 4
uint16 GOAL_ACHIEVED = 5
uint16 LOW_BATTERY = 6
uint16 CRITICAL_BATTERY = 7
uint16 BATTERY_STATE = 8
uint16 CHARGING_BATTERY = 9

uint16 id
---
bool success
string message
")

(setf (get panther_msgs::SetLEDAnimationResponse :md5sum-) "4051ed2a8439003711f44f890ff30ab8")
(setf (get panther_msgs::SetLEDAnimationResponse :datatype-) "panther_msgs/SetLEDAnimationResponse")
(setf (get panther_msgs::SetLEDAnimationResponse :definition-)
      "panther_msgs/LEDAnimation animation
bool repeating

================================================================================
MSG: panther_msgs/LEDAnimation
uint16 E_STOP = 0
uint16 READY = 1
uint16 ERROR = 2
uint16 MANUAL_ACTION = 3
uint16 AUTONOMOUS_ACTION = 4
uint16 GOAL_ACHIEVED = 5
uint16 LOW_BATTERY = 6
uint16 CRITICAL_BATTERY = 7
uint16 BATTERY_STATE = 8
uint16 CHARGING_BATTERY = 9

uint16 id
---
bool success
string message
")



(provide :panther_msgs/SetLEDAnimation "4051ed2a8439003711f44f890ff30ab8")


