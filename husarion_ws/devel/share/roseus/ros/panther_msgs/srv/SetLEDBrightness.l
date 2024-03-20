;; Auto-generated. Do not edit!


(when (boundp 'panther_msgs::SetLEDBrightness)
  (if (not (find-package "PANTHER_MSGS"))
    (make-package "PANTHER_MSGS"))
  (shadow 'SetLEDBrightness (find-package "PANTHER_MSGS")))
(unless (find-package "PANTHER_MSGS::SETLEDBRIGHTNESS")
  (make-package "PANTHER_MSGS::SETLEDBRIGHTNESS"))
(unless (find-package "PANTHER_MSGS::SETLEDBRIGHTNESSREQUEST")
  (make-package "PANTHER_MSGS::SETLEDBRIGHTNESSREQUEST"))
(unless (find-package "PANTHER_MSGS::SETLEDBRIGHTNESSRESPONSE")
  (make-package "PANTHER_MSGS::SETLEDBRIGHTNESSRESPONSE"))

(in-package "ROS")





(defclass panther_msgs::SetLEDBrightnessRequest
  :super ros::object
  :slots (_data ))

(defmethod panther_msgs::SetLEDBrightnessRequest
  (:init
   (&key
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _data (float __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _data
       (sys::poke _data (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _data
     (setq _data (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass panther_msgs::SetLEDBrightnessResponse
  :super ros::object
  :slots (_success _message ))

(defmethod panther_msgs::SetLEDBrightnessResponse
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

(defclass panther_msgs::SetLEDBrightness
  :super ros::object
  :slots ())

(setf (get panther_msgs::SetLEDBrightness :md5sum-) "96fbe2a49585a736ad8b4a31afbaf099")
(setf (get panther_msgs::SetLEDBrightness :datatype-) "panther_msgs/SetLEDBrightness")
(setf (get panther_msgs::SetLEDBrightness :request) panther_msgs::SetLEDBrightnessRequest)
(setf (get panther_msgs::SetLEDBrightness :response) panther_msgs::SetLEDBrightnessResponse)

(defmethod panther_msgs::SetLEDBrightnessRequest
  (:response () (instance panther_msgs::SetLEDBrightnessResponse :init)))

(setf (get panther_msgs::SetLEDBrightnessRequest :md5sum-) "96fbe2a49585a736ad8b4a31afbaf099")
(setf (get panther_msgs::SetLEDBrightnessRequest :datatype-) "panther_msgs/SetLEDBrightnessRequest")
(setf (get panther_msgs::SetLEDBrightnessRequest :definition-)
      "float32 data
---
bool success
string message
")

(setf (get panther_msgs::SetLEDBrightnessResponse :md5sum-) "96fbe2a49585a736ad8b4a31afbaf099")
(setf (get panther_msgs::SetLEDBrightnessResponse :datatype-) "panther_msgs/SetLEDBrightnessResponse")
(setf (get panther_msgs::SetLEDBrightnessResponse :definition-)
      "float32 data
---
bool success
string message
")



(provide :panther_msgs/SetLEDBrightness "96fbe2a49585a736ad8b4a31afbaf099")


