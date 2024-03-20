; Auto-generated. Do not edit!


(cl:in-package panther_msgs-msg)


;//! \htmlinclude DriverState.msg.html

(cl:defclass <DriverState> (roslisp-msg-protocol:ros-message)
  ((front
    :reader front
    :initarg :front
    :type panther_msgs-msg:MotorControllerState
    :initform (cl:make-instance 'panther_msgs-msg:MotorControllerState))
   (rear
    :reader rear
    :initarg :rear
    :type panther_msgs-msg:MotorControllerState
    :initform (cl:make-instance 'panther_msgs-msg:MotorControllerState)))
)

(cl:defclass DriverState (<DriverState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriverState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriverState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-msg:<DriverState> is deprecated: use panther_msgs-msg:DriverState instead.")))

(cl:ensure-generic-function 'front-val :lambda-list '(m))
(cl:defmethod front-val ((m <DriverState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:front-val is deprecated.  Use panther_msgs-msg:front instead.")
  (front m))

(cl:ensure-generic-function 'rear-val :lambda-list '(m))
(cl:defmethod rear-val ((m <DriverState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:rear-val is deprecated.  Use panther_msgs-msg:rear instead.")
  (rear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriverState>) ostream)
  "Serializes a message object of type '<DriverState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'front) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rear) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriverState>) istream)
  "Deserializes a message object of type '<DriverState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'front) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rear) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriverState>)))
  "Returns string type for a message object of type '<DriverState>"
  "panther_msgs/DriverState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriverState)))
  "Returns string type for a message object of type 'DriverState"
  "panther_msgs/DriverState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriverState>)))
  "Returns md5sum for a message object of type '<DriverState>"
  "475379213c09f61430c9f6dcd6c19337")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriverState)))
  "Returns md5sum for a message object of type 'DriverState"
  "475379213c09f61430c9f6dcd6c19337")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriverState>)))
  "Returns full string definition for message of type '<DriverState>"
  (cl:format cl:nil "panther_msgs/MotorControllerState front~%panther_msgs/MotorControllerState rear~%================================================================================~%MSG: panther_msgs/MotorControllerState~%float32 voltage~%float32 current~%float32 temperature~%panther_msgs/FaultFlag fault_flag~%panther_msgs/ScriptFlag script_flag~%panther_msgs/MotorState left_motor~%panther_msgs/MotorState right_motor~%================================================================================~%MSG: panther_msgs/FaultFlag~%bool can_net_err~%bool overheat~%bool overvoltage~%bool undervoltage~%bool short_circuit~%bool emergency_stop~%bool motor_or_sensor_setup_fault~%bool mosfet_failure~%bool default_config_loaded_at_startup~%================================================================================~%MSG: panther_msgs/ScriptFlag~%bool loop_error~%bool encoder_disconected~%bool amp_limiter~%================================================================================~%MSG: panther_msgs/MotorState~%string motor_joint_name~%panther_msgs/RuntimeError runtime_error~%================================================================================~%MSG: panther_msgs/RuntimeError~%bool amps_limit_active~%bool motor_stall~%bool loop_error~%bool safety_stop_active~%bool forward_limit_triggered~%bool reverse_limit_triggered~%bool amps_trigger_activated~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriverState)))
  "Returns full string definition for message of type 'DriverState"
  (cl:format cl:nil "panther_msgs/MotorControllerState front~%panther_msgs/MotorControllerState rear~%================================================================================~%MSG: panther_msgs/MotorControllerState~%float32 voltage~%float32 current~%float32 temperature~%panther_msgs/FaultFlag fault_flag~%panther_msgs/ScriptFlag script_flag~%panther_msgs/MotorState left_motor~%panther_msgs/MotorState right_motor~%================================================================================~%MSG: panther_msgs/FaultFlag~%bool can_net_err~%bool overheat~%bool overvoltage~%bool undervoltage~%bool short_circuit~%bool emergency_stop~%bool motor_or_sensor_setup_fault~%bool mosfet_failure~%bool default_config_loaded_at_startup~%================================================================================~%MSG: panther_msgs/ScriptFlag~%bool loop_error~%bool encoder_disconected~%bool amp_limiter~%================================================================================~%MSG: panther_msgs/MotorState~%string motor_joint_name~%panther_msgs/RuntimeError runtime_error~%================================================================================~%MSG: panther_msgs/RuntimeError~%bool amps_limit_active~%bool motor_stall~%bool loop_error~%bool safety_stop_active~%bool forward_limit_triggered~%bool reverse_limit_triggered~%bool amps_trigger_activated~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriverState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'front))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rear))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriverState>))
  "Converts a ROS message object to a list"
  (cl:list 'DriverState
    (cl:cons ':front (front msg))
    (cl:cons ':rear (rear msg))
))
