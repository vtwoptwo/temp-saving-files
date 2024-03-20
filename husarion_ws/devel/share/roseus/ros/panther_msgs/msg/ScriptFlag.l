;; Auto-generated. Do not edit!


(when (boundp 'panther_msgs::ScriptFlag)
  (if (not (find-package "PANTHER_MSGS"))
    (make-package "PANTHER_MSGS"))
  (shadow 'ScriptFlag (find-package "PANTHER_MSGS")))
(unless (find-package "PANTHER_MSGS::SCRIPTFLAG")
  (make-package "PANTHER_MSGS::SCRIPTFLAG"))

(in-package "ROS")
;;//! \htmlinclude ScriptFlag.msg.html


(defclass panther_msgs::ScriptFlag
  :super ros::object
  :slots (_loop_error _encoder_disconected _amp_limiter ))

(defmethod panther_msgs::ScriptFlag
  (:init
   (&key
    ((:loop_error __loop_error) nil)
    ((:encoder_disconected __encoder_disconected) nil)
    ((:amp_limiter __amp_limiter) nil)
    )
   (send-super :init)
   (setq _loop_error __loop_error)
   (setq _encoder_disconected __encoder_disconected)
   (setq _amp_limiter __amp_limiter)
   self)
  (:loop_error
   (&optional (__loop_error :null))
   (if (not (eq __loop_error :null)) (setq _loop_error __loop_error)) _loop_error)
  (:encoder_disconected
   (&optional (__encoder_disconected :null))
   (if (not (eq __encoder_disconected :null)) (setq _encoder_disconected __encoder_disconected)) _encoder_disconected)
  (:amp_limiter
   (&optional (__amp_limiter :null))
   (if (not (eq __amp_limiter :null)) (setq _amp_limiter __amp_limiter)) _amp_limiter)
  (:serialization-length
   ()
   (+
    ;; bool _loop_error
    1
    ;; bool _encoder_disconected
    1
    ;; bool _amp_limiter
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _loop_error
       (if _loop_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _encoder_disconected
       (if _encoder_disconected (write-byte -1 s) (write-byte 0 s))
     ;; bool _amp_limiter
       (if _amp_limiter (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _loop_error
     (setq _loop_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _encoder_disconected
     (setq _encoder_disconected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _amp_limiter
     (setq _amp_limiter (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get panther_msgs::ScriptFlag :md5sum-) "1ae55fdaf677921141ec0c2b7cf5ef83")
(setf (get panther_msgs::ScriptFlag :datatype-) "panther_msgs/ScriptFlag")
(setf (get panther_msgs::ScriptFlag :definition-)
      "bool loop_error
bool encoder_disconected
bool amp_limiter
")



(provide :panther_msgs/ScriptFlag "1ae55fdaf677921141ec0c2b7cf5ef83")


