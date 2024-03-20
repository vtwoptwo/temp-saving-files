;; Auto-generated. Do not edit!


(when (boundp 'panther_msgs::RuntimeError)
  (if (not (find-package "PANTHER_MSGS"))
    (make-package "PANTHER_MSGS"))
  (shadow 'RuntimeError (find-package "PANTHER_MSGS")))
(unless (find-package "PANTHER_MSGS::RUNTIMEERROR")
  (make-package "PANTHER_MSGS::RUNTIMEERROR"))

(in-package "ROS")
;;//! \htmlinclude RuntimeError.msg.html


(defclass panther_msgs::RuntimeError
  :super ros::object
  :slots (_amps_limit_active _motor_stall _loop_error _safety_stop_active _forward_limit_triggered _reverse_limit_triggered _amps_trigger_activated ))

(defmethod panther_msgs::RuntimeError
  (:init
   (&key
    ((:amps_limit_active __amps_limit_active) nil)
    ((:motor_stall __motor_stall) nil)
    ((:loop_error __loop_error) nil)
    ((:safety_stop_active __safety_stop_active) nil)
    ((:forward_limit_triggered __forward_limit_triggered) nil)
    ((:reverse_limit_triggered __reverse_limit_triggered) nil)
    ((:amps_trigger_activated __amps_trigger_activated) nil)
    )
   (send-super :init)
   (setq _amps_limit_active __amps_limit_active)
   (setq _motor_stall __motor_stall)
   (setq _loop_error __loop_error)
   (setq _safety_stop_active __safety_stop_active)
   (setq _forward_limit_triggered __forward_limit_triggered)
   (setq _reverse_limit_triggered __reverse_limit_triggered)
   (setq _amps_trigger_activated __amps_trigger_activated)
   self)
  (:amps_limit_active
   (&optional (__amps_limit_active :null))
   (if (not (eq __amps_limit_active :null)) (setq _amps_limit_active __amps_limit_active)) _amps_limit_active)
  (:motor_stall
   (&optional (__motor_stall :null))
   (if (not (eq __motor_stall :null)) (setq _motor_stall __motor_stall)) _motor_stall)
  (:loop_error
   (&optional (__loop_error :null))
   (if (not (eq __loop_error :null)) (setq _loop_error __loop_error)) _loop_error)
  (:safety_stop_active
   (&optional (__safety_stop_active :null))
   (if (not (eq __safety_stop_active :null)) (setq _safety_stop_active __safety_stop_active)) _safety_stop_active)
  (:forward_limit_triggered
   (&optional (__forward_limit_triggered :null))
   (if (not (eq __forward_limit_triggered :null)) (setq _forward_limit_triggered __forward_limit_triggered)) _forward_limit_triggered)
  (:reverse_limit_triggered
   (&optional (__reverse_limit_triggered :null))
   (if (not (eq __reverse_limit_triggered :null)) (setq _reverse_limit_triggered __reverse_limit_triggered)) _reverse_limit_triggered)
  (:amps_trigger_activated
   (&optional (__amps_trigger_activated :null))
   (if (not (eq __amps_trigger_activated :null)) (setq _amps_trigger_activated __amps_trigger_activated)) _amps_trigger_activated)
  (:serialization-length
   ()
   (+
    ;; bool _amps_limit_active
    1
    ;; bool _motor_stall
    1
    ;; bool _loop_error
    1
    ;; bool _safety_stop_active
    1
    ;; bool _forward_limit_triggered
    1
    ;; bool _reverse_limit_triggered
    1
    ;; bool _amps_trigger_activated
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _amps_limit_active
       (if _amps_limit_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _motor_stall
       (if _motor_stall (write-byte -1 s) (write-byte 0 s))
     ;; bool _loop_error
       (if _loop_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _safety_stop_active
       (if _safety_stop_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _forward_limit_triggered
       (if _forward_limit_triggered (write-byte -1 s) (write-byte 0 s))
     ;; bool _reverse_limit_triggered
       (if _reverse_limit_triggered (write-byte -1 s) (write-byte 0 s))
     ;; bool _amps_trigger_activated
       (if _amps_trigger_activated (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _amps_limit_active
     (setq _amps_limit_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _motor_stall
     (setq _motor_stall (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _loop_error
     (setq _loop_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _safety_stop_active
     (setq _safety_stop_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _forward_limit_triggered
     (setq _forward_limit_triggered (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reverse_limit_triggered
     (setq _reverse_limit_triggered (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _amps_trigger_activated
     (setq _amps_trigger_activated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get panther_msgs::RuntimeError :md5sum-) "6e114213d0c80320bc7a928841db326e")
(setf (get panther_msgs::RuntimeError :datatype-) "panther_msgs/RuntimeError")
(setf (get panther_msgs::RuntimeError :definition-)
      "bool amps_limit_active
bool motor_stall
bool loop_error
bool safety_stop_active
bool forward_limit_triggered
bool reverse_limit_triggered
bool amps_trigger_activated
")



(provide :panther_msgs/RuntimeError "6e114213d0c80320bc7a928841db326e")


