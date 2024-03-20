;; Auto-generated. Do not edit!


(when (boundp 'panther_msgs::DriverState)
  (if (not (find-package "PANTHER_MSGS"))
    (make-package "PANTHER_MSGS"))
  (shadow 'DriverState (find-package "PANTHER_MSGS")))
(unless (find-package "PANTHER_MSGS::DRIVERSTATE")
  (make-package "PANTHER_MSGS::DRIVERSTATE"))

(in-package "ROS")
;;//! \htmlinclude DriverState.msg.html


(defclass panther_msgs::DriverState
  :super ros::object
  :slots (_front _rear ))

(defmethod panther_msgs::DriverState
  (:init
   (&key
    ((:front __front) (instance panther_msgs::MotorControllerState :init))
    ((:rear __rear) (instance panther_msgs::MotorControllerState :init))
    )
   (send-super :init)
   (setq _front __front)
   (setq _rear __rear)
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
  (:serialization-length
   ()
   (+
    ;; panther_msgs/MotorControllerState _front
    (send _front :serialization-length)
    ;; panther_msgs/MotorControllerState _rear
    (send _rear :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; panther_msgs/MotorControllerState _front
       (send _front :serialize s)
     ;; panther_msgs/MotorControllerState _rear
       (send _rear :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; panther_msgs/MotorControllerState _front
     (send _front :deserialize buf ptr-) (incf ptr- (send _front :serialization-length))
   ;; panther_msgs/MotorControllerState _rear
     (send _rear :deserialize buf ptr-) (incf ptr- (send _rear :serialization-length))
   ;;
   self)
  )

(setf (get panther_msgs::DriverState :md5sum-) "475379213c09f61430c9f6dcd6c19337")
(setf (get panther_msgs::DriverState :datatype-) "panther_msgs/DriverState")
(setf (get panther_msgs::DriverState :definition-)
      "panther_msgs/MotorControllerState front
panther_msgs/MotorControllerState rear
================================================================================
MSG: panther_msgs/MotorControllerState
float32 voltage
float32 current
float32 temperature
panther_msgs/FaultFlag fault_flag
panther_msgs/ScriptFlag script_flag
panther_msgs/MotorState left_motor
panther_msgs/MotorState right_motor
================================================================================
MSG: panther_msgs/FaultFlag
bool can_net_err
bool overheat
bool overvoltage
bool undervoltage
bool short_circuit
bool emergency_stop
bool motor_or_sensor_setup_fault
bool mosfet_failure
bool default_config_loaded_at_startup
================================================================================
MSG: panther_msgs/ScriptFlag
bool loop_error
bool encoder_disconected
bool amp_limiter
================================================================================
MSG: panther_msgs/MotorState
string motor_joint_name
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



(provide :panther_msgs/DriverState "475379213c09f61430c9f6dcd6c19337")


