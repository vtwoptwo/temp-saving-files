; Auto-generated. Do not edit!


(cl:in-package panther_msgs-msg)


;//! \htmlinclude LEDAnimation.msg.html

(cl:defclass <LEDAnimation> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (param
    :reader param
    :initarg :param
    :type cl:string
    :initform ""))
)

(cl:defclass LEDAnimation (<LEDAnimation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LEDAnimation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LEDAnimation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-msg:<LEDAnimation> is deprecated: use panther_msgs-msg:LEDAnimation instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LEDAnimation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:id-val is deprecated.  Use panther_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'param-val :lambda-list '(m))
(cl:defmethod param-val ((m <LEDAnimation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:param-val is deprecated.  Use panther_msgs-msg:param instead.")
  (param m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LEDAnimation>)))
    "Constants for message type '<LEDAnimation>"
  '((:E_STOP . 0)
    (:READY . 1)
    (:ERROR . 2)
    (:MANUAL_ACTION . 3)
    (:AUTONOMOUS_ACTION . 4)
    (:GOAL_ACHIEVED . 5)
    (:LOW_BATTERY . 6)
    (:CRITICAL_BATTERY . 7)
    (:BATTERY_STATE . 8)
    (:CHARGING_BATTERY . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LEDAnimation)))
    "Constants for message type 'LEDAnimation"
  '((:E_STOP . 0)
    (:READY . 1)
    (:ERROR . 2)
    (:MANUAL_ACTION . 3)
    (:AUTONOMOUS_ACTION . 4)
    (:GOAL_ACHIEVED . 5)
    (:LOW_BATTERY . 6)
    (:CRITICAL_BATTERY . 7)
    (:BATTERY_STATE . 8)
    (:CHARGING_BATTERY . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LEDAnimation>) ostream)
  "Serializes a message object of type '<LEDAnimation>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'param))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'param))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LEDAnimation>) istream)
  "Deserializes a message object of type '<LEDAnimation>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'param) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LEDAnimation>)))
  "Returns string type for a message object of type '<LEDAnimation>"
  "panther_msgs/LEDAnimation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDAnimation)))
  "Returns string type for a message object of type 'LEDAnimation"
  "panther_msgs/LEDAnimation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LEDAnimation>)))
  "Returns md5sum for a message object of type '<LEDAnimation>"
  "f659758618bdff822f0aa756076978cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LEDAnimation)))
  "Returns md5sum for a message object of type 'LEDAnimation"
  "f659758618bdff822f0aa756076978cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LEDAnimation>)))
  "Returns full string definition for message of type '<LEDAnimation>"
  (cl:format cl:nil "uint16 E_STOP = 0~%uint16 READY = 1~%uint16 ERROR = 2~%uint16 MANUAL_ACTION = 3~%uint16 AUTONOMOUS_ACTION = 4~%uint16 GOAL_ACHIEVED = 5~%uint16 LOW_BATTERY = 6~%uint16 CRITICAL_BATTERY = 7~%uint16 BATTERY_STATE = 8~%uint16 CHARGING_BATTERY = 9~%~%uint16 id~%string param~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LEDAnimation)))
  "Returns full string definition for message of type 'LEDAnimation"
  (cl:format cl:nil "uint16 E_STOP = 0~%uint16 READY = 1~%uint16 ERROR = 2~%uint16 MANUAL_ACTION = 3~%uint16 AUTONOMOUS_ACTION = 4~%uint16 GOAL_ACHIEVED = 5~%uint16 LOW_BATTERY = 6~%uint16 CRITICAL_BATTERY = 7~%uint16 BATTERY_STATE = 8~%uint16 CHARGING_BATTERY = 9~%~%uint16 id~%string param~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LEDAnimation>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'param))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LEDAnimation>))
  "Converts a ROS message object to a list"
  (cl:list 'LEDAnimation
    (cl:cons ':id (id msg))
    (cl:cons ':param (param msg))
))
