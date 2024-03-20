; Auto-generated. Do not edit!


(cl:in-package panther_msgs-msg)


;//! \htmlinclude MotorState.msg.html

(cl:defclass <MotorState> (roslisp-msg-protocol:ros-message)
  ((motor_joint_name
    :reader motor_joint_name
    :initarg :motor_joint_name
    :type cl:string
    :initform "")
   (runtime_error
    :reader runtime_error
    :initarg :runtime_error
    :type panther_msgs-msg:RuntimeError
    :initform (cl:make-instance 'panther_msgs-msg:RuntimeError)))
)

(cl:defclass MotorState (<MotorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-msg:<MotorState> is deprecated: use panther_msgs-msg:MotorState instead.")))

(cl:ensure-generic-function 'motor_joint_name-val :lambda-list '(m))
(cl:defmethod motor_joint_name-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:motor_joint_name-val is deprecated.  Use panther_msgs-msg:motor_joint_name instead.")
  (motor_joint_name m))

(cl:ensure-generic-function 'runtime_error-val :lambda-list '(m))
(cl:defmethod runtime_error-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:runtime_error-val is deprecated.  Use panther_msgs-msg:runtime_error instead.")
  (runtime_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorState>) ostream)
  "Serializes a message object of type '<MotorState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'motor_joint_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'motor_joint_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'runtime_error) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorState>) istream)
  "Deserializes a message object of type '<MotorState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_joint_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'motor_joint_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'runtime_error) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorState>)))
  "Returns string type for a message object of type '<MotorState>"
  "panther_msgs/MotorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorState)))
  "Returns string type for a message object of type 'MotorState"
  "panther_msgs/MotorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorState>)))
  "Returns md5sum for a message object of type '<MotorState>"
  "77b28dab8f3bd880daefbd7dfd1955e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorState)))
  "Returns md5sum for a message object of type 'MotorState"
  "77b28dab8f3bd880daefbd7dfd1955e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorState>)))
  "Returns full string definition for message of type '<MotorState>"
  (cl:format cl:nil "string motor_joint_name~%panther_msgs/RuntimeError runtime_error~%================================================================================~%MSG: panther_msgs/RuntimeError~%bool amps_limit_active~%bool motor_stall~%bool loop_error~%bool safety_stop_active~%bool forward_limit_triggered~%bool reverse_limit_triggered~%bool amps_trigger_activated~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorState)))
  "Returns full string definition for message of type 'MotorState"
  (cl:format cl:nil "string motor_joint_name~%panther_msgs/RuntimeError runtime_error~%================================================================================~%MSG: panther_msgs/RuntimeError~%bool amps_limit_active~%bool motor_stall~%bool loop_error~%bool safety_stop_active~%bool forward_limit_triggered~%bool reverse_limit_triggered~%bool amps_trigger_activated~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'motor_joint_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'runtime_error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorState>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorState
    (cl:cons ':motor_joint_name (motor_joint_name msg))
    (cl:cons ':runtime_error (runtime_error msg))
))
