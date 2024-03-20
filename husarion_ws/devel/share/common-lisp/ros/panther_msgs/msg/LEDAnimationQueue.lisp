; Auto-generated. Do not edit!


(cl:in-package panther_msgs-msg)


;//! \htmlinclude LEDAnimationQueue.msg.html

(cl:defclass <LEDAnimationQueue> (roslisp-msg-protocol:ros-message)
  ((queue
    :reader queue
    :initarg :queue
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass LEDAnimationQueue (<LEDAnimationQueue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LEDAnimationQueue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LEDAnimationQueue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-msg:<LEDAnimationQueue> is deprecated: use panther_msgs-msg:LEDAnimationQueue instead.")))

(cl:ensure-generic-function 'queue-val :lambda-list '(m))
(cl:defmethod queue-val ((m <LEDAnimationQueue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:queue-val is deprecated.  Use panther_msgs-msg:queue instead.")
  (queue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LEDAnimationQueue>) ostream)
  "Serializes a message object of type '<LEDAnimationQueue>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'queue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'queue))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LEDAnimationQueue>) istream)
  "Deserializes a message object of type '<LEDAnimationQueue>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'queue) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'queue)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LEDAnimationQueue>)))
  "Returns string type for a message object of type '<LEDAnimationQueue>"
  "panther_msgs/LEDAnimationQueue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDAnimationQueue)))
  "Returns string type for a message object of type 'LEDAnimationQueue"
  "panther_msgs/LEDAnimationQueue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LEDAnimationQueue>)))
  "Returns md5sum for a message object of type '<LEDAnimationQueue>"
  "39f7d3ee4a5c2676f6070f72ebc81a53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LEDAnimationQueue)))
  "Returns md5sum for a message object of type 'LEDAnimationQueue"
  "39f7d3ee4a5c2676f6070f72ebc81a53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LEDAnimationQueue>)))
  "Returns full string definition for message of type '<LEDAnimationQueue>"
  (cl:format cl:nil "string[] queue~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LEDAnimationQueue)))
  "Returns full string definition for message of type 'LEDAnimationQueue"
  (cl:format cl:nil "string[] queue~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LEDAnimationQueue>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'queue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LEDAnimationQueue>))
  "Converts a ROS message object to a list"
  (cl:list 'LEDAnimationQueue
    (cl:cons ':queue (queue msg))
))
