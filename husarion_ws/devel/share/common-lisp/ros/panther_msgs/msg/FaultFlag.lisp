; Auto-generated. Do not edit!


(cl:in-package panther_msgs-msg)


;//! \htmlinclude FaultFlag.msg.html

(cl:defclass <FaultFlag> (roslisp-msg-protocol:ros-message)
  ((can_net_err
    :reader can_net_err
    :initarg :can_net_err
    :type cl:boolean
    :initform cl:nil)
   (overheat
    :reader overheat
    :initarg :overheat
    :type cl:boolean
    :initform cl:nil)
   (overvoltage
    :reader overvoltage
    :initarg :overvoltage
    :type cl:boolean
    :initform cl:nil)
   (undervoltage
    :reader undervoltage
    :initarg :undervoltage
    :type cl:boolean
    :initform cl:nil)
   (short_circuit
    :reader short_circuit
    :initarg :short_circuit
    :type cl:boolean
    :initform cl:nil)
   (emergency_stop
    :reader emergency_stop
    :initarg :emergency_stop
    :type cl:boolean
    :initform cl:nil)
   (motor_or_sensor_setup_fault
    :reader motor_or_sensor_setup_fault
    :initarg :motor_or_sensor_setup_fault
    :type cl:boolean
    :initform cl:nil)
   (mosfet_failure
    :reader mosfet_failure
    :initarg :mosfet_failure
    :type cl:boolean
    :initform cl:nil)
   (default_config_loaded_at_startup
    :reader default_config_loaded_at_startup
    :initarg :default_config_loaded_at_startup
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FaultFlag (<FaultFlag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaultFlag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaultFlag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-msg:<FaultFlag> is deprecated: use panther_msgs-msg:FaultFlag instead.")))

(cl:ensure-generic-function 'can_net_err-val :lambda-list '(m))
(cl:defmethod can_net_err-val ((m <FaultFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:can_net_err-val is deprecated.  Use panther_msgs-msg:can_net_err instead.")
  (can_net_err m))

(cl:ensure-generic-function 'overheat-val :lambda-list '(m))
(cl:defmethod overheat-val ((m <FaultFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:overheat-val is deprecated.  Use panther_msgs-msg:overheat instead.")
  (overheat m))

(cl:ensure-generic-function 'overvoltage-val :lambda-list '(m))
(cl:defmethod overvoltage-val ((m <FaultFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:overvoltage-val is deprecated.  Use panther_msgs-msg:overvoltage instead.")
  (overvoltage m))

(cl:ensure-generic-function 'undervoltage-val :lambda-list '(m))
(cl:defmethod undervoltage-val ((m <FaultFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:undervoltage-val is deprecated.  Use panther_msgs-msg:undervoltage instead.")
  (undervoltage m))

(cl:ensure-generic-function 'short_circuit-val :lambda-list '(m))
(cl:defmethod short_circuit-val ((m <FaultFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:short_circuit-val is deprecated.  Use panther_msgs-msg:short_circuit instead.")
  (short_circuit m))

(cl:ensure-generic-function 'emergency_stop-val :lambda-list '(m))
(cl:defmethod emergency_stop-val ((m <FaultFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:emergency_stop-val is deprecated.  Use panther_msgs-msg:emergency_stop instead.")
  (emergency_stop m))

(cl:ensure-generic-function 'motor_or_sensor_setup_fault-val :lambda-list '(m))
(cl:defmethod motor_or_sensor_setup_fault-val ((m <FaultFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:motor_or_sensor_setup_fault-val is deprecated.  Use panther_msgs-msg:motor_or_sensor_setup_fault instead.")
  (motor_or_sensor_setup_fault m))

(cl:ensure-generic-function 'mosfet_failure-val :lambda-list '(m))
(cl:defmethod mosfet_failure-val ((m <FaultFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:mosfet_failure-val is deprecated.  Use panther_msgs-msg:mosfet_failure instead.")
  (mosfet_failure m))

(cl:ensure-generic-function 'default_config_loaded_at_startup-val :lambda-list '(m))
(cl:defmethod default_config_loaded_at_startup-val ((m <FaultFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:default_config_loaded_at_startup-val is deprecated.  Use panther_msgs-msg:default_config_loaded_at_startup instead.")
  (default_config_loaded_at_startup m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaultFlag>) ostream)
  "Serializes a message object of type '<FaultFlag>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'can_net_err) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'overheat) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'overvoltage) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'undervoltage) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'short_circuit) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_or_sensor_setup_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mosfet_failure) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'default_config_loaded_at_startup) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaultFlag>) istream)
  "Deserializes a message object of type '<FaultFlag>"
    (cl:setf (cl:slot-value msg 'can_net_err) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'overheat) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'overvoltage) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'undervoltage) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'short_circuit) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'emergency_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'motor_or_sensor_setup_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mosfet_failure) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'default_config_loaded_at_startup) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaultFlag>)))
  "Returns string type for a message object of type '<FaultFlag>"
  "panther_msgs/FaultFlag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaultFlag)))
  "Returns string type for a message object of type 'FaultFlag"
  "panther_msgs/FaultFlag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaultFlag>)))
  "Returns md5sum for a message object of type '<FaultFlag>"
  "5a07885f1bc8f54f267cfc6c4eab520b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaultFlag)))
  "Returns md5sum for a message object of type 'FaultFlag"
  "5a07885f1bc8f54f267cfc6c4eab520b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaultFlag>)))
  "Returns full string definition for message of type '<FaultFlag>"
  (cl:format cl:nil "bool can_net_err~%bool overheat~%bool overvoltage~%bool undervoltage~%bool short_circuit~%bool emergency_stop~%bool motor_or_sensor_setup_fault~%bool mosfet_failure~%bool default_config_loaded_at_startup~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaultFlag)))
  "Returns full string definition for message of type 'FaultFlag"
  (cl:format cl:nil "bool can_net_err~%bool overheat~%bool overvoltage~%bool undervoltage~%bool short_circuit~%bool emergency_stop~%bool motor_or_sensor_setup_fault~%bool mosfet_failure~%bool default_config_loaded_at_startup~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaultFlag>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaultFlag>))
  "Converts a ROS message object to a list"
  (cl:list 'FaultFlag
    (cl:cons ':can_net_err (can_net_err msg))
    (cl:cons ':overheat (overheat msg))
    (cl:cons ':overvoltage (overvoltage msg))
    (cl:cons ':undervoltage (undervoltage msg))
    (cl:cons ':short_circuit (short_circuit msg))
    (cl:cons ':emergency_stop (emergency_stop msg))
    (cl:cons ':motor_or_sensor_setup_fault (motor_or_sensor_setup_fault msg))
    (cl:cons ':mosfet_failure (mosfet_failure msg))
    (cl:cons ':default_config_loaded_at_startup (default_config_loaded_at_startup msg))
))
