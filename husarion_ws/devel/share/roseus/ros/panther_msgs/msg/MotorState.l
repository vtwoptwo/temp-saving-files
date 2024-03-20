;; Auto-generated. Do not edit!


(when (boundp 'panther_msgs::MotorState)
  (if (not (find-package "PANTHER_MSGS"))
    (make-package "PANTHER_MSGS"))
  (shadow 'MotorState (find-package "PANTHER_MSGS")))
(unless (find-package "PANTHER_MSGS::MOTORSTATE")
  (make-package "PANTHER_MSGS::MOTORSTATE"))

(in-package "ROS")
;;//! \htmlinclude MotorState.msg.html


(defclass panther_msgs::MotorState
  :super ros::object
  :slots (_motor_joint_name _runtime_error ))

(defmethod panther_msgs::MotorState
  (:init
   (&key
    ((:motor_joint_name __motor_joint_name) "")
    ((:runtime_error __runtime_error) (instance panther_msgs::RuntimeError :init))
    )
   (send-super :init)
   (setq _motor_joint_name (string __motor_joint_name))
   (setq _runtime_error __runtime_error)
   self)
  (:motor_joint_name
   (&optional __motor_joint_name)
   (if __motor_joint_name (setq _motor_joint_name __motor_joint_name)) _motor_joint_name)
  (:runtime_error
   (&rest __runtime_error)
   (if (keywordp (car __runtime_error))
       (send* _runtime_error __runtime_error)
     (progn
       (if __runtime_error (setq _runtime_error (car __runtime_error)))
       _runtime_error)))
  (:serialization-length
   ()
   (+
    ;; string _motor_joint_name
    4 (length _motor_joint_name)
    ;; panther_msgs/RuntimeError _runtime_error
    (send _runtime_error :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _motor_joint_name
       (write-long (length _motor_joint_name) s) (princ _motor_joint_name s)
     ;; panther_msgs/RuntimeError _runtime_error
       (send _runtime_error :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _motor_joint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _motor_joint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; panther_msgs/RuntimeError _runtime_error
     (send _runtime_error :deserialize buf ptr-) (incf ptr- (send _runtime_error :serialization-length))
   ;;
   self)
  )

(setf (get panther_msgs::MotorState :md5sum-) "77b28dab8f3bd880daefbd7dfd1955e8")
(setf (get panther_msgs::MotorState :datatype-) "panther_msgs/MotorState")
(setf (get panther_msgs::MotorState :definition-)
      "string motor_joint_name
panther_msgs/RuntimeError runtime_error
================================================================================
MSG: panther_msgs/RuntimeError
bool amps_limit_active
bool motor_stall
bool loop_error
bool safety_stop_active
bool forward_limit_triggered
bool reverse_limit_triggered
bool amps_trigger_activated
")



(provide :panther_msgs/MotorState "77b28dab8f3bd880daefbd7dfd1955e8")


