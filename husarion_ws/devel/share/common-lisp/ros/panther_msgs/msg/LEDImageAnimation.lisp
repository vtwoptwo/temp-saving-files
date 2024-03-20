; Auto-generated. Do not edit!


(cl:in-package panther_msgs-msg)


;//! \htmlinclude LEDImageAnimation.msg.html

(cl:defclass <LEDImageAnimation> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type cl:string
    :initform "")
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0)
   (brightness
    :reader brightness
    :initarg :brightness
    :type cl:float
    :initform 0.0)
   (repeat
    :reader repeat
    :initarg :repeat
    :type cl:fixnum
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type cl:integer
    :initform 0))
)

(cl:defclass LEDImageAnimation (<LEDImageAnimation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LEDImageAnimation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LEDImageAnimation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-msg:<LEDImageAnimation> is deprecated: use panther_msgs-msg:LEDImageAnimation instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <LEDImageAnimation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:image-val is deprecated.  Use panther_msgs-msg:image instead.")
  (image m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <LEDImageAnimation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:duration-val is deprecated.  Use panther_msgs-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'brightness-val :lambda-list '(m))
(cl:defmethod brightness-val ((m <LEDImageAnimation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:brightness-val is deprecated.  Use panther_msgs-msg:brightness instead.")
  (brightness m))

(cl:ensure-generic-function 'repeat-val :lambda-list '(m))
(cl:defmethod repeat-val ((m <LEDImageAnimation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:repeat-val is deprecated.  Use panther_msgs-msg:repeat instead.")
  (repeat m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <LEDImageAnimation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:color-val is deprecated.  Use panther_msgs-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LEDImageAnimation>) ostream)
  "Serializes a message object of type '<LEDImageAnimation>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'image))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'image))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brightness))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repeat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'color)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LEDImageAnimation>) istream)
  "Deserializes a message object of type '<LEDImageAnimation>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'image) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brightness) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repeat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'color)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LEDImageAnimation>)))
  "Returns string type for a message object of type '<LEDImageAnimation>"
  "panther_msgs/LEDImageAnimation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDImageAnimation)))
  "Returns string type for a message object of type 'LEDImageAnimation"
  "panther_msgs/LEDImageAnimation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LEDImageAnimation>)))
  "Returns md5sum for a message object of type '<LEDImageAnimation>"
  "e28603d00b7f8b45434019f01a6bcf71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LEDImageAnimation)))
  "Returns md5sum for a message object of type 'LEDImageAnimation"
  "e28603d00b7f8b45434019f01a6bcf71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LEDImageAnimation>)))
  "Returns full string definition for message of type '<LEDImageAnimation>"
  (cl:format cl:nil "string image~%float32 duration~%float32 brightness~%uint8 repeat~%uint32 color~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LEDImageAnimation)))
  "Returns full string definition for message of type 'LEDImageAnimation"
  (cl:format cl:nil "string image~%float32 duration~%float32 brightness~%uint8 repeat~%uint32 color~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LEDImageAnimation>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'image))
     4
     4
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LEDImageAnimation>))
  "Converts a ROS message object to a list"
  (cl:list 'LEDImageAnimation
    (cl:cons ':image (image msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':brightness (brightness msg))
    (cl:cons ':repeat (repeat msg))
    (cl:cons ':color (color msg))
))
