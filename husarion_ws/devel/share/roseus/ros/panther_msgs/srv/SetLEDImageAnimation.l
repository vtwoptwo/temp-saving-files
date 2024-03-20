;; Auto-generated. Do not edit!


(when (boundp 'panther_msgs::SetLEDImageAnimation)
  (if (not (find-package "PANTHER_MSGS"))
    (make-package "PANTHER_MSGS"))
  (shadow 'SetLEDImageAnimation (find-package "PANTHER_MSGS")))
(unless (find-package "PANTHER_MSGS::SETLEDIMAGEANIMATION")
  (make-package "PANTHER_MSGS::SETLEDIMAGEANIMATION"))
(unless (find-package "PANTHER_MSGS::SETLEDIMAGEANIMATIONREQUEST")
  (make-package "PANTHER_MSGS::SETLEDIMAGEANIMATIONREQUEST"))
(unless (find-package "PANTHER_MSGS::SETLEDIMAGEANIMATIONRESPONSE")
  (make-package "PANTHER_MSGS::SETLEDIMAGEANIMATIONRESPONSE"))

(in-package "ROS")





(defclass panther_msgs::SetLEDImageAnimationRequest
  :super ros::object
  :slots (_front _rear _repeating ))

(defmethod panther_msgs::SetLEDImageAnimationRequest
  (:init
   (&key
    ((:front __front) (instance panther_msgs::LEDImageAnimation :init))
    ((:rear __rear) (instance panther_msgs::LEDImageAnimation :init))
    ((:repeating __repeating) nil)
    )
   (send-super :init)
   (setq _front __front)
   (setq _rear __rear)
   (setq _repeating __repeating)
   self)
  (:front
   (&rest __front)
   (if (keywordp (car __front))
       (send* _front __front)
     (progn
       (if __front (setq _front (car __front)))
       _front)))
  (:rear
   (&rest __rear)
   (if (keywordp (car __rear))
       (send* _rear __rear)
     (progn
       (if __rear (setq _rear (car __rear)))
       _rear)))
  (:repeating
   (&optional (__repeating :null))
   (if (not (eq __repeating :null)) (setq _repeating __repeating)) _repeating)
  (:serialization-length
   ()
   (+
    ;; panther_msgs/LEDImageAnimation _front
    (send _front :serialization-length)
    ;; panther_msgs/LEDImageAnimation _rear
    (send _rear :serialization-length)
    ;; bool _repeating
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; panther_msgs/LEDImageAnimation _front
       (send _front :serialize s)
     ;; panther_msgs/LEDImageAnimation _rear
       (send _rear :serialize s)
     ;; bool _repeating
       (if _repeating (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; panther_msgs/LEDImageAnimation _front
     (send _front :deserialize buf ptr-) (incf ptr- (send _front :serialization-length))
   ;; panther_msgs/LEDImageAnimation _rear
     (send _rear :deserialize buf ptr-) (incf ptr- (send _rear :serialization-length))
   ;; bool _repeating
     (setq _repeating (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass panther_msgs::SetLEDImageAnimationResponse
  :super ros::object
  :slots (_success _message ))

(defmethod panther_msgs::SetLEDImageAnimationResponse
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

(defclass panther_msgs::SetLEDImageAnimation
  :super ros::object
  :slots ())

(setf (get panther_msgs::SetLEDImageAnimation :md5sum-) "160476792cabdd0ac4f8a13800bc7d59")
(setf (get panther_msgs::SetLEDImageAnimation :datatype-) "panther_msgs/SetLEDImageAnimation")
(setf (get panther_msgs::SetLEDImageAnimation :request) panther_msgs::SetLEDImageAnimationRequest)
(setf (get panther_msgs::SetLEDImageAnimation :response) panther_msgs::SetLEDImageAnimationResponse)

(defmethod panther_msgs::SetLEDImageAnimationRequest
  (:response () (instance panther_msgs::SetLEDImageAnimationResponse :init)))

(setf (get panther_msgs::SetLEDImageAnimationRequest :md5sum-) "160476792cabdd0ac4f8a13800bc7d59")
(setf (get panther_msgs::SetLEDImageAnimationRequest :datatype-) "panther_msgs/SetLEDImageAnimationRequest")
(setf (get panther_msgs::SetLEDImageAnimationRequest :definition-)
      "panther_msgs/LEDImageAnimation front
panther_msgs/LEDImageAnimation rear
bool repeating

================================================================================
MSG: panther_msgs/LEDImageAnimation
string image
float32 duration
float32 brightness
uint8 repeat
---
bool success
string message
")

(setf (get panther_msgs::SetLEDImageAnimationResponse :md5sum-) "160476792cabdd0ac4f8a13800bc7d59")
(setf (get panther_msgs::SetLEDImageAnimationResponse :datatype-) "panther_msgs/SetLEDImageAnimationResponse")
(setf (get panther_msgs::SetLEDImageAnimationResponse :definition-)
      "panther_msgs/LEDImageAnimation front
panther_msgs/LEDImageAnimation rear
bool repeating

================================================================================
MSG: panther_msgs/LEDImageAnimation
string image
float32 duration
float32 brightness
uint8 repeat
---
bool success
string message
")



(provide :panther_msgs/SetLEDImageAnimation "160476792cabdd0ac4f8a13800bc7d59")


