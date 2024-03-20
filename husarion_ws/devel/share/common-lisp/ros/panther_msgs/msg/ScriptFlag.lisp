; Auto-generated. Do not edit!


(cl:in-package panther_msgs-msg)


;//! \htmlinclude ScriptFlag.msg.html

(cl:defclass <ScriptFlag> (roslisp-msg-protocol:ros-message)
  ((loop_error
    :reader loop_error
    :initarg :loop_error
    :type cl:boolean
    :initform cl:nil)
   (encoder_disconected
    :reader encoder_disconected
    :initarg :encoder_disconected
    :type cl:boolean
    :initform cl:nil)
   (amp_limiter
    :reader amp_limiter
    :initarg :amp_limiter
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ScriptFlag (<ScriptFlag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScriptFlag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScriptFlag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-msg:<ScriptFlag> is deprecated: use panther_msgs-msg:ScriptFlag instead.")))

(cl:ensure-generic-function 'loop_error-val :lambda-list '(m))
(cl:defmethod loop_error-val ((m <ScriptFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:loop_error-val is deprecated.  Use panther_msgs-msg:loop_error instead.")
  (loop_error m))

(cl:ensure-generic-function 'encoder_disconected-val :lambda-list '(m))
(cl:defmethod encoder_disconected-val ((m <ScriptFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:encoder_disconected-val is deprecated.  Use panther_msgs-msg:encoder_disconected instead.")
  (encoder_disconected m))

(cl:ensure-generic-function 'amp_limiter-val :lambda-list '(m))
(cl:defmethod amp_limiter-val ((m <ScriptFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:amp_limiter-val is deprecated.  Use panther_msgs-msg:amp_limiter instead.")
  (amp_limiter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScriptFlag>) ostream)
  "Serializes a message object of type '<ScriptFlag>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'loop_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'encoder_disconected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'amp_limiter) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScriptFlag>) istream)
  "Deserializes a message object of type '<ScriptFlag>"
    (cl:setf (cl:slot-value msg 'loop_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'encoder_disconected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'amp_limiter) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScriptFlag>)))
  "Returns string type for a message object of type '<ScriptFlag>"
  "panther_msgs/ScriptFlag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScriptFlag)))
  "Returns string type for a message object of type 'ScriptFlag"
  "panther_msgs/ScriptFlag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScriptFlag>)))
  "Returns md5sum for a message object of type '<ScriptFlag>"
  "1ae55fdaf677921141ec0c2b7cf5ef83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScriptFlag)))
  "Returns md5sum for a message object of type 'ScriptFlag"
  "1ae55fdaf677921141ec0c2b7cf5ef83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScriptFlag>)))
  "Returns full string definition for message of type '<ScriptFlag>"
  (cl:format cl:nil "bool loop_error~%bool encoder_disconected~%bool amp_limiter~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScriptFlag)))
  "Returns full string definition for message of type 'ScriptFlag"
  (cl:format cl:nil "bool loop_error~%bool encoder_disconected~%bool amp_limiter~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScriptFlag>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScriptFlag>))
  "Converts a ROS message object to a list"
  (cl:list 'ScriptFlag
    (cl:cons ':loop_error (loop_error msg))
    (cl:cons ':encoder_disconected (encoder_disconected msg))
    (cl:cons ':amp_limiter (amp_limiter msg))
))
