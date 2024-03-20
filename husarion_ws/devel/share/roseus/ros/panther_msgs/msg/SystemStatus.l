;; Auto-generated. Do not edit!


(when (boundp 'panther_msgs::SystemStatus)
  (if (not (find-package "PANTHER_MSGS"))
    (make-package "PANTHER_MSGS"))
  (shadow 'SystemStatus (find-package "PANTHER_MSGS")))
(unless (find-package "PANTHER_MSGS::SYSTEMSTATUS")
  (make-package "PANTHER_MSGS::SYSTEMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SystemStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass panther_msgs::SystemStatus
  :super ros::object
  :slots (_header _cpu_percent _cpu_temp _avg_load_percent _ram_usage_percent _disc_usage_percent ))

(defmethod panther_msgs::SystemStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cpu_percent __cpu_percent) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cpu_temp __cpu_temp) 0.0)
    ((:avg_load_percent __avg_load_percent) 0.0)
    ((:ram_usage_percent __ram_usage_percent) 0.0)
    ((:disc_usage_percent __disc_usage_percent) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _cpu_percent __cpu_percent)
   (setq _cpu_temp (float __cpu_temp))
   (setq _avg_load_percent (float __avg_load_percent))
   (setq _ram_usage_percent (float __ram_usage_percent))
   (setq _disc_usage_percent (float __disc_usage_percent))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cpu_percent
   (&optional __cpu_percent)
   (if __cpu_percent (setq _cpu_percent __cpu_percent)) _cpu_percent)
  (:cpu_temp
   (&optional __cpu_temp)
   (if __cpu_temp (setq _cpu_temp __cpu_temp)) _cpu_temp)
  (:avg_load_percent
   (&optional __avg_load_percent)
   (if __avg_load_percent (setq _avg_load_percent __avg_load_percent)) _avg_load_percent)
  (:ram_usage_percent
   (&optional __ram_usage_percent)
   (if __ram_usage_percent (setq _ram_usage_percent __ram_usage_percent)) _ram_usage_percent)
  (:disc_usage_percent
   (&optional __disc_usage_percent)
   (if __disc_usage_percent (setq _disc_usage_percent __disc_usage_percent)) _disc_usage_percent)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _cpu_percent
    (* 4    (length _cpu_percent)) 4
    ;; float32 _cpu_temp
    4
    ;; float32 _avg_load_percent
    4
    ;; float32 _ram_usage_percent
    4
    ;; float32 _disc_usage_percent
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _cpu_percent
     (write-long (length _cpu_percent) s)
     (dotimes (i (length _cpu_percent))
       (sys::poke (elt _cpu_percent i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _cpu_temp
       (sys::poke _cpu_temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _avg_load_percent
       (sys::poke _avg_load_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ram_usage_percent
       (sys::poke _ram_usage_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _disc_usage_percent
       (sys::poke _disc_usage_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _cpu_percent
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cpu_percent (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cpu_percent i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _cpu_temp
     (setq _cpu_temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _avg_load_percent
     (setq _avg_load_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ram_usage_percent
     (setq _ram_usage_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _disc_usage_percent
     (setq _disc_usage_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get panther_msgs::SystemStatus :md5sum-) "52a7bb997a88ff007b47b0547fe4a966")
(setf (get panther_msgs::SystemStatus :datatype-) "panther_msgs/SystemStatus")
(setf (get panther_msgs::SystemStatus :definition-)
      "Header header

float32[] cpu_percent
float32 cpu_temp
float32 avg_load_percent
float32 ram_usage_percent
float32 disc_usage_percent
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :panther_msgs/SystemStatus "52a7bb997a88ff007b47b0547fe4a966")


