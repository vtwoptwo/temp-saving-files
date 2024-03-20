; Auto-generated. Do not edit!


(cl:in-package panther_msgs-srv)


;//! \htmlinclude SetLEDImageAnimation-request.msg.html

(cl:defclass <SetLEDImageAnimation-request> (roslisp-msg-protocol:ros-message)
  ((front
    :reader front
    :initarg :front
    :type panther_msgs-msg:LEDImageAnimation
    :initform (cl:make-instance 'panther_msgs-msg:LEDImageAnimation))
   (rear
    :reader rear
    :initarg :rear
    :type panther_msgs-msg:LEDImageAnimation
    :initform (cl:make-instance 'panther_msgs-msg:LEDImageAnimation))
   (repeating
    :reader repeating
    :initarg :repeating
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetLEDImageAnimation-request (<SetLEDImageAnimation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLEDImageAnimation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLEDImageAnimation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-srv:<SetLEDImageAnimation-request> is deprecated: use panther_msgs-srv:SetLEDImageAnimation-request instead.")))

(cl:ensure-generic-function 'front-val :lambda-list '(m))
(cl:defmethod front-val ((m <SetLEDImageAnimation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-srv:front-val is deprecated.  Use panther_msgs-srv:front instead.")
  (front m))

(cl:ensure-generic-function 'rear-val :lambda-list '(m))
(cl:defmethod rear-val ((m <SetLEDImageAnimation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-srv:rear-val is deprecated.  Use panther_msgs-srv:rear instead.")
  (rear m))

(cl:ensure-generic-function 'repeating-val :lambda-list '(m))
(cl:defmethod repeating-val ((m <SetLEDImageAnimation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-srv:repeating-val is deprecated.  Use panther_msgs-srv:repeating instead.")
  (repeating m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLEDImageAnimation-request>) ostream)
  "Serializes a message object of type '<SetLEDImageAnimation-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'front) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rear) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'repeating) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLEDImageAnimation-request>) istream)
  "Deserializes a message object of type '<SetLEDImageAnimation-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'front) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rear) istream)
    (cl:setf (cl:slot-value msg 'repeating) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLEDImageAnimation-request>)))
  "Returns string type for a service object of type '<SetLEDImageAnimation-request>"
  "panther_msgs/SetLEDImageAnimationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLEDImageAnimation-request)))
  "Returns string type for a service object of type 'SetLEDImageAnimation-request"
  "panther_msgs/SetLEDImageAnimationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLEDImageAnimation-request>)))
  "Returns md5sum for a message object of type '<SetLEDImageAnimation-request>"
  "160476792cabdd0ac4f8a13800bc7d59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLEDImageAnimation-request)))
  "Returns md5sum for a message object of type 'SetLEDImageAnimation-request"
  "160476792cabdd0ac4f8a13800bc7d59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLEDImageAnimation-request>)))
  "Returns full string definition for message of type '<SetLEDImageAnimation-request>"
  (cl:format cl:nil "panther_msgs/LEDImageAnimation front~%panther_msgs/LEDImageAnimation rear~%bool repeating~%~%================================================================================~%MSG: panther_msgs/LEDImageAnimation~%string image~%float32 duration~%float32 brightness~%uint8 repeat~%uint32 color~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLEDImageAnimation-request)))
  "Returns full string definition for message of type 'SetLEDImageAnimation-request"
  (cl:format cl:nil "panther_msgs/LEDImageAnimation front~%panther_msgs/LEDImageAnimation rear~%bool repeating~%~%================================================================================~%MSG: panther_msgs/LEDImageAnimation~%string image~%float32 duration~%float32 brightness~%uint8 repeat~%uint32 color~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLEDImageAnimation-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'front))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rear))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLEDImageAnimation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLEDImageAnimation-request
    (cl:cons ':front (front msg))
    (cl:cons ':rear (rear msg))
    (cl:cons ':repeating (repeating msg))
))
;//! \htmlinclude SetLEDImageAnimation-response.msg.html

(cl:defclass <SetLEDImageAnimation-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetLEDImageAnimation-response (<SetLEDImageAnimation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLEDImageAnimation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLEDImageAnimation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-srv:<SetLEDImageAnimation-response> is deprecated: use panther_msgs-srv:SetLEDImageAnimation-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetLEDImageAnimation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-srv:success-val is deprecated.  Use panther_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetLEDImageAnimation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-srv:message-val is deprecated.  Use panther_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLEDImageAnimation-response>) ostream)
  "Serializes a message object of type '<SetLEDImageAnimation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLEDImageAnimation-response>) istream)
  "Deserializes a message object of type '<SetLEDImageAnimation-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLEDImageAnimation-response>)))
  "Returns string type for a service object of type '<SetLEDImageAnimation-response>"
  "panther_msgs/SetLEDImageAnimationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLEDImageAnimation-response)))
  "Returns string type for a service object of type 'SetLEDImageAnimation-response"
  "panther_msgs/SetLEDImageAnimationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLEDImageAnimation-response>)))
  "Returns md5sum for a message object of type '<SetLEDImageAnimation-response>"
  "160476792cabdd0ac4f8a13800bc7d59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLEDImageAnimation-response)))
  "Returns md5sum for a message object of type 'SetLEDImageAnimation-response"
  "160476792cabdd0ac4f8a13800bc7d59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLEDImageAnimation-response>)))
  "Returns full string definition for message of type '<SetLEDImageAnimation-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLEDImageAnimation-response)))
  "Returns full string definition for message of type 'SetLEDImageAnimation-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLEDImageAnimation-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLEDImageAnimation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLEDImageAnimation-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLEDImageAnimation)))
  'SetLEDImageAnimation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLEDImageAnimation)))
  'SetLEDImageAnimation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLEDImageAnimation)))
  "Returns string type for a service object of type '<SetLEDImageAnimation>"
  "panther_msgs/SetLEDImageAnimation")