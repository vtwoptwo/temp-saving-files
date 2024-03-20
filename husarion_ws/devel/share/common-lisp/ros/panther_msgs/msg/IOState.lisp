; Auto-generated. Do not edit!


(cl:in-package panther_msgs-msg)


;//! \htmlinclude IOState.msg.html

(cl:defclass <IOState> (roslisp-msg-protocol:ros-message)
  ((aux_power
    :reader aux_power
    :initarg :aux_power
    :type cl:boolean
    :initform cl:nil)
   (charger_connected
    :reader charger_connected
    :initarg :charger_connected
    :type cl:boolean
    :initform cl:nil)
   (charger_enabled
    :reader charger_enabled
    :initarg :charger_enabled
    :type cl:boolean
    :initform cl:nil)
   (digital_power
    :reader digital_power
    :initarg :digital_power
    :type cl:boolean
    :initform cl:nil)
   (fan
    :reader fan
    :initarg :fan
    :type cl:boolean
    :initform cl:nil)
   (motor_power
    :reader motor_power
    :initarg :motor_power
    :type cl:boolean
    :initform cl:nil)
   (power_button
    :reader power_button
    :initarg :power_button
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass IOState (<IOState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-msg:<IOState> is deprecated: use panther_msgs-msg:IOState instead.")))

(cl:ensure-generic-function 'aux_power-val :lambda-list '(m))
(cl:defmethod aux_power-val ((m <IOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:aux_power-val is deprecated.  Use panther_msgs-msg:aux_power instead.")
  (aux_power m))

(cl:ensure-generic-function 'charger_connected-val :lambda-list '(m))
(cl:defmethod charger_connected-val ((m <IOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:charger_connected-val is deprecated.  Use panther_msgs-msg:charger_connected instead.")
  (charger_connected m))

(cl:ensure-generic-function 'charger_enabled-val :lambda-list '(m))
(cl:defmethod charger_enabled-val ((m <IOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:charger_enabled-val is deprecated.  Use panther_msgs-msg:charger_enabled instead.")
  (charger_enabled m))

(cl:ensure-generic-function 'digital_power-val :lambda-list '(m))
(cl:defmethod digital_power-val ((m <IOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:digital_power-val is deprecated.  Use panther_msgs-msg:digital_power instead.")
  (digital_power m))

(cl:ensure-generic-function 'fan-val :lambda-list '(m))
(cl:defmethod fan-val ((m <IOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:fan-val is deprecated.  Use panther_msgs-msg:fan instead.")
  (fan m))

(cl:ensure-generic-function 'motor_power-val :lambda-list '(m))
(cl:defmethod motor_power-val ((m <IOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:motor_power-val is deprecated.  Use panther_msgs-msg:motor_power instead.")
  (motor_power m))

(cl:ensure-generic-function 'power_button-val :lambda-list '(m))
(cl:defmethod power_button-val ((m <IOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:power_button-val is deprecated.  Use panther_msgs-msg:power_button instead.")
  (power_button m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOState>) ostream)
  "Serializes a message object of type '<IOState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'aux_power) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'charger_connected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'charger_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'digital_power) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fan) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_power) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'power_button) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOState>) istream)
  "Deserializes a message object of type '<IOState>"
    (cl:setf (cl:slot-value msg 'aux_power) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'charger_connected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'charger_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'digital_power) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fan) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'motor_power) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'power_button) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOState>)))
  "Returns string type for a message object of type '<IOState>"
  "panther_msgs/IOState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOState)))
  "Returns string type for a message object of type 'IOState"
  "panther_msgs/IOState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOState>)))
  "Returns md5sum for a message object of type '<IOState>"
  "9355949f9d224eb1c84d18ab411d0e55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOState)))
  "Returns md5sum for a message object of type 'IOState"
  "9355949f9d224eb1c84d18ab411d0e55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOState>)))
  "Returns full string definition for message of type '<IOState>"
  (cl:format cl:nil "bool aux_power~%bool charger_connected~%bool charger_enabled~%bool digital_power~%bool fan~%bool motor_power~%bool power_button~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOState)))
  "Returns full string definition for message of type 'IOState"
  (cl:format cl:nil "bool aux_power~%bool charger_connected~%bool charger_enabled~%bool digital_power~%bool fan~%bool motor_power~%bool power_button~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOState>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOState>))
  "Converts a ROS message object to a list"
  (cl:list 'IOState
    (cl:cons ':aux_power (aux_power msg))
    (cl:cons ':charger_connected (charger_connected msg))
    (cl:cons ':charger_enabled (charger_enabled msg))
    (cl:cons ':digital_power (digital_power msg))
    (cl:cons ':fan (fan msg))
    (cl:cons ':motor_power (motor_power msg))
    (cl:cons ':power_button (power_button msg))
))
