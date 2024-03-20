; Auto-generated. Do not edit!


(cl:in-package panther_msgs-msg)


;//! \htmlinclude MotorControllerState.msg.html

(cl:defclass <MotorControllerState> (roslisp-msg-protocol:ros-message)
  ((voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0)
   (current
    :reader current
    :initarg :current
    :type cl:float
    :initform 0.0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0)
   (fault_flag
    :reader fault_flag
    :initarg :fault_flag
    :type panther_msgs-msg:FaultFlag
    :initform (cl:make-instance 'panther_msgs-msg:FaultFlag))
   (script_flag
    :reader script_flag
    :initarg :script_flag
    :type panther_msgs-msg:ScriptFlag
    :initform (cl:make-instance 'panther_msgs-msg:ScriptFlag))
   (left_motor
    :reader left_motor
    :initarg :left_motor
    :type panther_msgs-msg:MotorState
    :initform (cl:make-instance 'panther_msgs-msg:MotorState))
   (right_motor
    :reader right_motor
    :initarg :right_motor
    :type panther_msgs-msg:MotorState
    :initform (cl:make-instance 'panther_msgs-msg:MotorState)))
)

(cl:defclass MotorControllerState (<MotorControllerState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorControllerState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorControllerState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-msg:<MotorControllerState> is deprecated: use panther_msgs-msg:MotorControllerState instead.")))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <MotorControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:voltage-val is deprecated.  Use panther_msgs-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <MotorControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:current-val is deprecated.  Use panther_msgs-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <MotorControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:temperature-val is deprecated.  Use panther_msgs-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'fault_flag-val :lambda-list '(m))
(cl:defmethod fault_flag-val ((m <MotorControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:fault_flag-val is deprecated.  Use panther_msgs-msg:fault_flag instead.")
  (fault_flag m))

(cl:ensure-generic-function 'script_flag-val :lambda-list '(m))
(cl:defmethod script_flag-val ((m <MotorControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:script_flag-val is deprecated.  Use panther_msgs-msg:script_flag instead.")
  (script_flag m))

(cl:ensure-generic-function 'left_motor-val :lambda-list '(m))
(cl:defmethod left_motor-val ((m <MotorControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:left_motor-val is deprecated.  Use panther_msgs-msg:left_motor instead.")
  (left_motor m))

(cl:ensure-generic-function 'right_motor-val :lambda-list '(m))
(cl:defmethod right_motor-val ((m <MotorControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:right_motor-val is deprecated.  Use panther_msgs-msg:right_motor instead.")
  (right_motor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorControllerState>) ostream)
  "Serializes a message object of type '<MotorControllerState>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fault_flag) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'script_flag) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_motor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_motor) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorControllerState>) istream)
  "Deserializes a message object of type '<MotorControllerState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fault_flag) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'script_flag) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_motor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_motor) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorControllerState>)))
  "Returns string type for a message object of type '<MotorControllerState>"
  "panther_msgs/MotorControllerState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorControllerState)))
  "Returns string type for a message object of type 'MotorControllerState"
  "panther_msgs/MotorControllerState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorControllerState>)))
  "Returns md5sum for a message object of type '<MotorControllerState>"
  "20ed5f1b3f79d90615a0b88922a91b07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorControllerState)))
  "Returns md5sum for a message object of type 'MotorControllerState"
  "20ed5f1b3f79d90615a0b88922a91b07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorControllerState>)))
  "Returns full string definition for message of type '<MotorControllerState>"
  (cl:format cl:nil "float32 voltage~%float32 current~%float32 temperature~%panther_msgs/FaultFlag fault_flag~%panther_msgs/ScriptFlag script_flag~%panther_msgs/MotorState left_motor~%panther_msgs/MotorState right_motor~%================================================================================~%MSG: panther_msgs/FaultFlag~%bool can_net_err~%bool overheat~%bool overvoltage~%bool undervoltage~%bool short_circuit~%bool emergency_stop~%bool motor_or_sensor_setup_fault~%bool mosfet_failure~%bool default_config_loaded_at_startup~%================================================================================~%MSG: panther_msgs/ScriptFlag~%bool loop_error~%bool encoder_disconected~%bool amp_limiter~%================================================================================~%MSG: panther_msgs/MotorState~%string motor_joint_name~%panther_msgs/RuntimeError runtime_error~%================================================================================~%MSG: panther_msgs/RuntimeError~%bool amps_limit_active~%bool motor_stall~%bool loop_error~%bool safety_stop_active~%bool forward_limit_triggered~%bool reverse_limit_triggered~%bool amps_trigger_activated~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorControllerState)))
  "Returns full string definition for message of type 'MotorControllerState"
  (cl:format cl:nil "float32 voltage~%float32 current~%float32 temperature~%panther_msgs/FaultFlag fault_flag~%panther_msgs/ScriptFlag script_flag~%panther_msgs/MotorState left_motor~%panther_msgs/MotorState right_motor~%================================================================================~%MSG: panther_msgs/FaultFlag~%bool can_net_err~%bool overheat~%bool overvoltage~%bool undervoltage~%bool short_circuit~%bool emergency_stop~%bool motor_or_sensor_setup_fault~%bool mosfet_failure~%bool default_config_loaded_at_startup~%================================================================================~%MSG: panther_msgs/ScriptFlag~%bool loop_error~%bool encoder_disconected~%bool amp_limiter~%================================================================================~%MSG: panther_msgs/MotorState~%string motor_joint_name~%panther_msgs/RuntimeError runtime_error~%================================================================================~%MSG: panther_msgs/RuntimeError~%bool amps_limit_active~%bool motor_stall~%bool loop_error~%bool safety_stop_active~%bool forward_limit_triggered~%bool reverse_limit_triggered~%bool amps_trigger_activated~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorControllerState>))
  (cl:+ 0
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fault_flag))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'script_flag))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_motor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_motor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorControllerState>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorControllerState
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':current (current msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':fault_flag (fault_flag msg))
    (cl:cons ':script_flag (script_flag msg))
    (cl:cons ':left_motor (left_motor msg))
    (cl:cons ':right_motor (right_motor msg))
))
