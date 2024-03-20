; Auto-generated. Do not edit!


(cl:in-package panther_msgs-msg)


;//! \htmlinclude SystemStatus.msg.html

(cl:defclass <SystemStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cpu_percent
    :reader cpu_percent
    :initarg :cpu_percent
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (cpu_temp
    :reader cpu_temp
    :initarg :cpu_temp
    :type cl:float
    :initform 0.0)
   (avg_load_percent
    :reader avg_load_percent
    :initarg :avg_load_percent
    :type cl:float
    :initform 0.0)
   (ram_usage_percent
    :reader ram_usage_percent
    :initarg :ram_usage_percent
    :type cl:float
    :initform 0.0)
   (disc_usage_percent
    :reader disc_usage_percent
    :initarg :disc_usage_percent
    :type cl:float
    :initform 0.0))
)

(cl:defclass SystemStatus (<SystemStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panther_msgs-msg:<SystemStatus> is deprecated: use panther_msgs-msg:SystemStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:header-val is deprecated.  Use panther_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cpu_percent-val :lambda-list '(m))
(cl:defmethod cpu_percent-val ((m <SystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:cpu_percent-val is deprecated.  Use panther_msgs-msg:cpu_percent instead.")
  (cpu_percent m))

(cl:ensure-generic-function 'cpu_temp-val :lambda-list '(m))
(cl:defmethod cpu_temp-val ((m <SystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:cpu_temp-val is deprecated.  Use panther_msgs-msg:cpu_temp instead.")
  (cpu_temp m))

(cl:ensure-generic-function 'avg_load_percent-val :lambda-list '(m))
(cl:defmethod avg_load_percent-val ((m <SystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:avg_load_percent-val is deprecated.  Use panther_msgs-msg:avg_load_percent instead.")
  (avg_load_percent m))

(cl:ensure-generic-function 'ram_usage_percent-val :lambda-list '(m))
(cl:defmethod ram_usage_percent-val ((m <SystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:ram_usage_percent-val is deprecated.  Use panther_msgs-msg:ram_usage_percent instead.")
  (ram_usage_percent m))

(cl:ensure-generic-function 'disc_usage_percent-val :lambda-list '(m))
(cl:defmethod disc_usage_percent-val ((m <SystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panther_msgs-msg:disc_usage_percent-val is deprecated.  Use panther_msgs-msg:disc_usage_percent instead.")
  (disc_usage_percent m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemStatus>) ostream)
  "Serializes a message object of type '<SystemStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cpu_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cpu_percent))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cpu_temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'avg_load_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ram_usage_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'disc_usage_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemStatus>) istream)
  "Deserializes a message object of type '<SystemStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cpu_percent) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cpu_percent)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpu_temp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'avg_load_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ram_usage_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'disc_usage_percent) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemStatus>)))
  "Returns string type for a message object of type '<SystemStatus>"
  "panther_msgs/SystemStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemStatus)))
  "Returns string type for a message object of type 'SystemStatus"
  "panther_msgs/SystemStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemStatus>)))
  "Returns md5sum for a message object of type '<SystemStatus>"
  "52a7bb997a88ff007b47b0547fe4a966")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemStatus)))
  "Returns md5sum for a message object of type 'SystemStatus"
  "52a7bb997a88ff007b47b0547fe4a966")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemStatus>)))
  "Returns full string definition for message of type '<SystemStatus>"
  (cl:format cl:nil "Header header~%~%float32[] cpu_percent~%float32 cpu_temp~%float32 avg_load_percent~%float32 ram_usage_percent~%float32 disc_usage_percent~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemStatus)))
  "Returns full string definition for message of type 'SystemStatus"
  (cl:format cl:nil "Header header~%~%float32[] cpu_percent~%float32 cpu_temp~%float32 avg_load_percent~%float32 ram_usage_percent~%float32 disc_usage_percent~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cpu_percent) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemStatus
    (cl:cons ':header (header msg))
    (cl:cons ':cpu_percent (cpu_percent msg))
    (cl:cons ':cpu_temp (cpu_temp msg))
    (cl:cons ':avg_load_percent (avg_load_percent msg))
    (cl:cons ':ram_usage_percent (ram_usage_percent msg))
    (cl:cons ':disc_usage_percent (disc_usage_percent msg))
))
