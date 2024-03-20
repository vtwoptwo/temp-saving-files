; Auto-generated. Do not edit!


(cl:in-package panther_msgs-srv)


;//! \htmlinclude SetLEDAnimation-request.msg.html

(cl:defclass <SetLEDAnimation-request> (roslisp-msg-protocol:ros-message)
  ((animation
    :reader animation
    :initarg :animation
    :type panther_msgs-msg:LEDAnimation
    :initform (cl:make-instance 'panther_msgs-msg:LEDAnimation))
   (repeating
    :reader repeating
    :initarg :repeating
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetLEDAnimation-request (<SetLEDAnimation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLEDAnimation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLEDAnimation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-srv:<SetLEDAnimation-request> is deprecated: use panther_msgs-srv:SetLEDAnimation-request instead.")))

(cl:ensure-generic-function 'animation-val :lambda-list '(m))
(cl:defmethod animation-val ((m <SetLEDAnimation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-srv:animation-val is deprecated.  Use panther_msgs-srv:animation instead.")
  (animation m))

(cl:ensure-generic-function 'repeating-val :lambda-list '(m))
(cl:defmethod repeating-val ((m <SetLEDAnimation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-srv:repeating-val is deprecated.  Use panther_msgs-srv:repeating instead.")
  (repeating m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLEDAnimation-request>) ostream)
  "Serializes a message object of type '<SetLEDAnimation-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'animation) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'repeating) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLEDAnimation-request>) istream)
  "Deserializes a message object of type '<SetLEDAnimation-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'animation) istream)
    (cl:setf (cl:slot-value msg 'repeating) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLEDAnimation-request>)))
  "Returns string type for a service object of type '<SetLEDAnimation-request>"
  "panther_msgs/SetLEDAnimationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLEDAnimation-request)))
  "Returns string type for a service object of type 'SetLEDAnimation-request"
  "panther_msgs/SetLEDAnimationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLEDAnimation-request>)))
  "Returns md5sum for a message object of type '<SetLEDAnimation-request>"
  "4051ed2a8439003711f44f890ff30ab8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLEDAnimation-request)))
  "Returns md5sum for a message object of type 'SetLEDAnimation-request"
  "4051ed2a8439003711f44f890ff30ab8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLEDAnimation-request>)))
  "Returns full string definition for message of type '<SetLEDAnimation-request>"
  (cl:format cl:nil "panther_msgs/LEDAnimation animation~%bool repeating~%~%================================================================================~%MSG: panther_msgs/LEDAnimation~%uint16 E_STOP = 0~%uint16 READY = 1~%uint16 ERROR = 2~%uint16 MANUAL_ACTION = 3~%uint16 AUTONOMOUS_ACTION = 4~%uint16 GOAL_ACHIEVED = 5~%uint16 LOW_BATTERY = 6~%uint16 CRITICAL_BATTERY = 7~%uint16 BATTERY_STATE = 8~%uint16 CHARGING_BATTERY = 9~%~%uint16 id~%string param~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLEDAnimation-request)))
  "Returns full string definition for message of type 'SetLEDAnimation-request"
  (cl:format cl:nil "panther_msgs/LEDAnimation animation~%bool repeating~%~%================================================================================~%MSG: panther_msgs/LEDAnimation~%uint16 E_STOP = 0~%uint16 READY = 1~%uint16 ERROR = 2~%uint16 MANUAL_ACTION = 3~%uint16 AUTONOMOUS_ACTION = 4~%uint16 GOAL_ACHIEVED = 5~%uint16 LOW_BATTERY = 6~%uint16 CRITICAL_BATTERY = 7~%uint16 BATTERY_STATE = 8~%uint16 CHARGING_BATTERY = 9~%~%uint16 id~%string param~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLEDAnimation-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'animation))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLEDAnimation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLEDAnimation-request
    (cl:cons ':animation (animation msg))
    (cl:cons ':repeating (repeating msg))
))
;//! \htmlinclude SetLEDAnimation-response.msg.html

(cl:defclass <SetLEDAnimation-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetLEDAnimation-response (<SetLEDAnimation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLEDAnimation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLEDAnimation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-srv:<SetLEDAnimation-response> is deprecated: use panther_msgs-srv:SetLEDAnimation-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetLEDAnimation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-srv:success-val is deprecated.  Use panther_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetLEDAnimation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-srv:message-val is deprecated.  Use panther_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLEDAnimation-response>) ostream)
  "Serializes a message object of type '<SetLEDAnimation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLEDAnimation-response>) istream)
  "Deserializes a message object of type '<SetLEDAnimation-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLEDAnimation-response>)))
  "Returns string type for a service object of type '<SetLEDAnimation-response>"
  "panther_msgs/SetLEDAnimationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLEDAnimation-response)))
  "Returns string type for a service object of type 'SetLEDAnimation-response"
  "panther_msgs/SetLEDAnimationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLEDAnimation-response>)))
  "Returns md5sum for a message object of type '<SetLEDAnimation-response>"
  "4051ed2a8439003711f44f890ff30ab8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLEDAnimation-response)))
  "Returns md5sum for a message object of type 'SetLEDAnimation-response"
  "4051ed2a8439003711f44f890ff30ab8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLEDAnimation-response>)))
  "Returns full string definition for message of type '<SetLEDAnimation-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLEDAnimation-response)))
  "Returns full string definition for message of type 'SetLEDAnimation-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLEDAnimation-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLEDAnimation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLEDAnimation-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLEDAnimation)))
  'SetLEDAnimation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLEDAnimation)))
  'SetLEDAnimation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLEDAnimation)))
  "Returns string type for a service object of type '<SetLEDAnimation>"
  "panther_msgs/SetLEDAnimation")