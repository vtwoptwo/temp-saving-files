; Auto-generated. Do not edit!


(cl:in-package panther_msgs-srv)


;//! \htmlinclude SetLEDBrightness-request.msg.html

(cl:defclass <SetLEDBrightness-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetLEDBrightness-request (<SetLEDBrightness-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLEDBrightness-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLEDBrightness-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-srv:<SetLEDBrightness-request> is deprecated: use panther_msgs-srv:SetLEDBrightness-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetLEDBrightness-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-srv:data-val is deprecated.  Use panther_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLEDBrightness-request>) ostream)
  "Serializes a message object of type '<SetLEDBrightness-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLEDBrightness-request>) istream)
  "Deserializes a message object of type '<SetLEDBrightness-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLEDBrightness-request>)))
  "Returns string type for a service object of type '<SetLEDBrightness-request>"
  "panther_msgs/SetLEDBrightnessRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLEDBrightness-request)))
  "Returns string type for a service object of type 'SetLEDBrightness-request"
  "panther_msgs/SetLEDBrightnessRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLEDBrightness-request>)))
  "Returns md5sum for a message object of type '<SetLEDBrightness-request>"
  "96fbe2a49585a736ad8b4a31afbaf099")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLEDBrightness-request)))
  "Returns md5sum for a message object of type 'SetLEDBrightness-request"
  "96fbe2a49585a736ad8b4a31afbaf099")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLEDBrightness-request>)))
  "Returns full string definition for message of type '<SetLEDBrightness-request>"
  (cl:format cl:nil "float32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLEDBrightness-request)))
  "Returns full string definition for message of type 'SetLEDBrightness-request"
  (cl:format cl:nil "float32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLEDBrightness-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLEDBrightness-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLEDBrightness-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetLEDBrightness-response.msg.html

(cl:defclass <SetLEDBrightness-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetLEDBrightness-response (<SetLEDBrightness-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLEDBrightness-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLEDBrightness-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-srv:<SetLEDBrightness-response> is deprecated: use panther_msgs-srv:SetLEDBrightness-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetLEDBrightness-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-srv:success-val is deprecated.  Use panther_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetLEDBrightness-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-srv:message-val is deprecated.  Use panther_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLEDBrightness-response>) ostream)
  "Serializes a message object of type '<SetLEDBrightness-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLEDBrightness-response>) istream)
  "Deserializes a message object of type '<SetLEDBrightness-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLEDBrightness-response>)))
  "Returns string type for a service object of type '<SetLEDBrightness-response>"
  "panther_msgs/SetLEDBrightnessResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLEDBrightness-response)))
  "Returns string type for a service object of type 'SetLEDBrightness-response"
  "panther_msgs/SetLEDBrightnessResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLEDBrightness-response>)))
  "Returns md5sum for a message object of type '<SetLEDBrightness-response>"
  "96fbe2a49585a736ad8b4a31afbaf099")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLEDBrightness-response)))
  "Returns md5sum for a message object of type 'SetLEDBrightness-response"
  "96fbe2a49585a736ad8b4a31afbaf099")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLEDBrightness-response>)))
  "Returns full string definition for message of type '<SetLEDBrightness-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLEDBrightness-response)))
  "Returns full string definition for message of type 'SetLEDBrightness-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLEDBrightness-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLEDBrightness-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLEDBrightness-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLEDBrightness)))
  'SetLEDBrightness-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLEDBrightness)))
  'SetLEDBrightness-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLEDBrightness)))
  "Returns string type for a service object of type '<SetLEDBrightness>"
  "panther_msgs/SetLEDBrightness")