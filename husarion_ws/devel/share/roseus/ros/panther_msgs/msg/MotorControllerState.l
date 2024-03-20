;; Auto-generated. Do not edit!


(when (boundp 'panther_msgs::MotorControllerState)
  (if (not (find-package "PANTHER_MSGS"))
    (make-package "PANTHER_MSGS"))
  (shadow 'MotorControllerState (find-package "PANTHER_MSGS")))
(unless (find-package "PANTHER_MSGS::MOTORCONTROLLERSTATE")
  (make-package "PANTHER_MSGS::MOTORCONTROLLERSTATE"))

(in-package "ROS")
;;//! \htmlinclude MotorControllerState.msg.html


(defclass panther_msgs::MotorControllerState
  :super ros::object
  :slots (_voltage _current _temperature _fault_flag _script_flag _left_motor _right_motor ))

(defmethod panther_msgs::MotorControllerState
  (:init
   (&key
    ((:voltage __voltage) 0.0)
    ((:current __current) 0.0)
    ((:temperature __temperature) 0.0)
    ((:fault_flag __fault_flag) (instance panther_msgs::FaultFlag :init))
    ((:script_flag __script_flag) (instance panther_msgs::ScriptFlag :init))
    ((:left_motor __left_motor) (instance panther_msgs::MotorState :init))
    ((:right_motor __right_motor) (instance panther_msgs::MotorState :init))
    )
   (send-super :init)
   (setq _voltage (float __voltage))
   (setq _current (float __current))
   (setq _temperature (float __temperature))
   (setq _fault_flag __fault_flag)
   (setq _script_flag __script_flag)
   (setq _left_motor __left_motor)
   (setq _right_motor __right_motor)
   self)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:fault_flag
   (&rest __fault_flag)
   (if (keywordp (car __fault_flag))
       (send* _fault_flag __fault_flag)
     (progn
       (if __fault_flag (setq _fault_flag (car __fault_flag)))
       _fault_flag)))
  (:script_flag
   (&rest __script_flag)
   (if (keywordp (car __script_flag))
       (send* _script_flag __script_flag)
     (progn
       (if __script_flag (setq _script_flag (car __script_flag)))
       _script_flag)))
  (:left_motor
   (&rest __left_motor)
   (if (keywordp (car __left_motor))
       (send* _left_motor __left_motor)
     (progn
       (if __left_motor (setq _left_motor (car __left_motor)))
       _left_motor)))
  (:right_motor
   (&rest __right_motor)
   (if (keywordp (car __right_motor))
       (send* _right_motor __right_motor)
     (progn
       (if __right_motor (setq _right_motor (car __right_motor)))
       _right_motor)))
  (:serialization-length
   ()
   (+
    ;; float32 _voltage
    4
    ;; float32 _current
    4
    ;; float32 _temperature
    4
    ;; panther_msgs/FaultFlag _fault_flag
    (send _fault_flag :serialization-length)
    ;; panther_msgs/ScriptFlag _script_flag
    (send _script_flag :serialization-length)
    ;; panther_msgs/MotorState _left_motor
    (send _left_motor :serialization-length)
    ;; panther_msgs/MotorState _right_motor
    (send _right_motor :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; panther_msgs/FaultFlag _fault_flag
       (send _fault_flag :serialize s)
     ;; panther_msgs/ScriptFlag _script_flag
       (send _script_flag :serialize s)
     ;; panther_msgs/MotorState _left_motor
       (send _left_motor :serialize s)
     ;; panther_msgs/MotorState _right_motor
       (send _right_motor :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; panther_msgs/FaultFlag _fault_flag
     (send _fault_flag :deserialize buf ptr-) (incf ptr- (send _fault_flag :serialization-length))
   ;; panther_msgs/ScriptFlag _script_flag
     (send _script_flag :deserialize buf ptr-) (incf ptr- (send _script_flag :serialization-length))
   ;; panther_msgs/MotorState _left_motor
     (send _left_motor :deserialize buf ptr-) (incf ptr- (send _left_motor :serialization-length))
   ;; panther_msgs/MotorState _right_motor
     (send _right_motor :deserialize buf ptr-) (incf ptr- (send _right_motor :serialization-length))
   ;;
   self)
  )

(setf (get panther_msgs::MotorControllerState :md5sum-) "20ed5f1b3f79d90615a0b88922a91b07")
(setf (get panther_msgs::MotorControllerState :datatype-) "panther_msgs/MotorControllerState")
(setf (get panther_msgs::MotorControllerState :definition-)
      "float32 voltage
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



(provide :panther_msgs/MotorControllerState "20ed5f1b3f79d90615a0b88922a91b07")


