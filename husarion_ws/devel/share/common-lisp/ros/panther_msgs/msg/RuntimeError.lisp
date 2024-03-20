; Auto-generated. Do not edit!


(cl:in-package panther_msgs-msg)


;//! \htmlinclude RuntimeError.msg.html

(cl:defclass <RuntimeError> (roslisp-msg-protocol:ros-message)
  ((amps_limit_active
    :reader amps_limit_active
    :initarg :amps_limit_active
    :type cl:boolean
    :initform cl:nil)
   (motor_stall
    :reader motor_stall
    :initarg :motor_stall
    :type cl:boolean
    :initform cl:nil)
   (loop_error
    :reader loop_error
    :initarg :loop_error
    :type cl:boolean
    :initform cl:nil)
   (safety_stop_active
    :reader safety_stop_active
    :initarg :safety_stop_active
    :type cl:boolean
    :initform cl:nil)
   (forward_limit_triggered
    :reader forward_limit_triggered
    :initarg :forward_limit_triggered
    :type cl:boolean
    :initform cl:nil)
   (reverse_limit_triggered
    :reader reverse_limit_triggered
    :initarg :reverse_limit_triggered
    :type cl:boolean
    :initform cl:nil)
   (amps_trigger_activated
    :reader amps_trigger_activated
    :initarg :amps_trigger_activated
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RuntimeError (<RuntimeError>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RuntimeError>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RuntimeError)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-msg:<RuntimeError> is deprecated: use panther_msgs-msg:RuntimeError instead.")))

(cl:ensure-generic-function 'amps_limit_active-val :lambda-list '(m))
(cl:defmethod amps_limit_active-val ((m <RuntimeError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:amps_limit_active-val is deprecated.  Use panther_msgs-msg:amps_limit_active instead.")
  (amps_limit_active m))

(cl:ensure-generic-function 'motor_stall-val :lambda-list '(m))
(cl:defmethod motor_stall-val ((m <RuntimeError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:motor_stall-val is deprecated.  Use panther_msgs-msg:motor_stall instead.")
  (motor_stall m))

(cl:ensure-generic-function 'loop_error-val :lambda-list '(m))
(cl:defmethod loop_error-val ((m <RuntimeError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:loop_error-val is deprecated.  Use panther_msgs-msg:loop_error instead.")
  (loop_error m))

(cl:ensure-generic-function 'safety_stop_active-val :lambda-list '(m))
(cl:defmethod safety_stop_active-val ((m <RuntimeError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:safety_stop_active-val is deprecated.  Use panther_msgs-msg:safety_stop_active instead.")
  (safety_stop_active m))

(cl:ensure-generic-function 'forward_limit_triggered-val :lambda-list '(m))
(cl:defmethod forward_limit_triggered-val ((m <RuntimeError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:forward_limit_triggered-val is deprecated.  Use panther_msgs-msg:forward_limit_triggered instead.")
  (forward_limit_triggered m))

(cl:ensure-generic-function 'reverse_limit_triggered-val :lambda-list '(m))
(cl:defmethod reverse_limit_triggered-val ((m <RuntimeError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:reverse_limit_triggered-val is deprecated.  Use panther_msgs-msg:reverse_limit_triggered instead.")
  (reverse_limit_triggered m))

(cl:ensure-generic-function 'amps_trigger_activated-val :lambda-list '(m))
(cl:defmethod amps_trigger_activated-val ((m <RuntimeError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:amps_trigger_activated-val is deprecated.  Use panther_msgs-msg:amps_trigger_activated instead.")
  (amps_trigger_activated m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RuntimeError>) ostream)
  "Serializes a message object of type '<RuntimeError>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'amps_limit_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_stall) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'loop_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'safety_stop_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'forward_limit_triggered) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reverse_limit_triggered) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'amps_trigger_activated) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RuntimeError>) istream)
  "Deserializes a message object of type '<RuntimeError>"
    (cl:setf (cl:slot-value msg 'amps_limit_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'motor_stall) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'loop_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'safety_stop_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'forward_limit_triggered) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reverse_limit_triggered) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'amps_trigger_activated) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RuntimeError>)))
  "Returns string type for a message object of type '<RuntimeError>"
  "panther_msgs/RuntimeError")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RuntimeError)))
  "Returns string type for a message object of type 'RuntimeError"
  "panther_msgs/RuntimeError")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RuntimeError>)))
  "Returns md5sum for a message object of type '<RuntimeError>"
  "6e114213d0c80320bc7a928841db326e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RuntimeError)))
  "Returns md5sum for a message object of type 'RuntimeError"
  "6e114213d0c80320bc7a928841db326e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RuntimeError>)))
  "Returns full string definition for message of type '<RuntimeError>"
  (cl:format cl:nil "bool amps_limit_active~%bool motor_stall~%bool loop_error~%bool safety_stop_active~%bool forward_limit_triggered~%bool reverse_limit_triggered~%bool amps_trigger_activated~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RuntimeError)))
  "Returns full string definition for message of type 'RuntimeError"
  (cl:format cl:nil "bool amps_limit_active~%bool motor_stall~%bool loop_error~%bool safety_stop_active~%bool forward_limit_triggered~%bool reverse_limit_triggered~%bool amps_trigger_activated~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RuntimeError>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RuntimeError>))
  "Converts a ROS message object to a list"
  (cl:list 'RuntimeError
    (cl:cons ':amps_limit_active (amps_limit_active msg))
    (cl:cons ':motor_stall (motor_stall msg))
    (cl:cons ':loop_error (loop_error msg))
    (cl:cons ':safety_stop_active (safety_stop_active msg))
    (cl:cons ':forward_limit_triggered (forward_limit_triggered msg))
    (cl:cons ':reverse_limit_triggered (reverse_limit_triggered msg))
    (cl:cons ':amps_trigger_activated (amps_trigger_activated msg))
))
