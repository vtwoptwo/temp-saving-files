;; Auto-generated. Do not edit!


(when (boundp 'panther_msgs::FaultFlag)
  (if (not (find-package "PANTHER_MSGS"))
    (make-package "PANTHER_MSGS"))
  (shadow 'FaultFlag (find-package "PANTHER_MSGS")))
(unless (find-package "PANTHER_MSGS::FAULTFLAG")
  (make-package "PANTHER_MSGS::FAULTFLAG"))

(in-package "ROS")
;;//! \htmlinclude FaultFlag.msg.html


(defclass panther_msgs::FaultFlag
  :super ros::object
  :slots (_can_net_err _overheat _overvoltage _undervoltage _short_circuit _emergency_stop _motor_or_sensor_setup_fault _mosfet_failure _default_config_loaded_at_startup ))

(defmethod panther_msgs::FaultFlag
  (:init
   (&key
    ((:can_net_err __can_net_err) nil)
    ((:overheat __overheat) nil)
    ((:overvoltage __overvoltage) nil)
    ((:undervoltage __undervoltage) nil)
    ((:short_circuit __short_circuit) nil)
    ((:emergency_stop __emergency_stop) nil)
    ((:motor_or_sensor_setup_fault __motor_or_sensor_setup_fault) nil)
    ((:mosfet_failure __mosfet_failure) nil)
    ((:default_config_loaded_at_startup __default_config_loaded_at_startup) nil)
    )
   (send-super :init)
   (setq _can_net_err __can_net_err)
   (setq _overheat __overheat)
   (setq _overvoltage __overvoltage)
   (setq _undervoltage __undervoltage)
   (setq _short_circuit __short_circuit)
   (setq _emergency_stop __emergency_stop)
   (setq _motor_or_sensor_setup_fault __motor_or_sensor_setup_fault)
   (setq _mosfet_failure __mosfet_failure)
   (setq _default_config_loaded_at_startup __default_config_loaded_at_startup)
   self)
  (:can_net_err
   (&optional (__can_net_err :null))
   (if (not (eq __can_net_err :null)) (setq _can_net_err __can_net_err)) _can_net_err)
  (:overheat
   (&optional (__overheat :null))
   (if (not (eq __overheat :null)) (setq _overheat __overheat)) _overheat)
  (:overvoltage
   (&optional (__overvoltage :null))
   (if (not (eq __overvoltage :null)) (setq _overvoltage __overvoltage)) _overvoltage)
  (:undervoltage
   (&optional (__undervoltage :null))
   (if (not (eq __undervoltage :null)) (setq _undervoltage __undervoltage)) _undervoltage)
  (:short_circuit
   (&optional (__short_circuit :null))
   (if (not (eq __short_circuit :null)) (setq _short_circuit __short_circuit)) _short_circuit)
  (:emergency_stop
   (&optional (__emergency_stop :null))
   (if (not (eq __emergency_stop :null)) (setq _emergency_stop __emergency_stop)) _emergency_stop)
  (:motor_or_sensor_setup_fault
   (&optional (__motor_or_sensor_setup_fault :null))
   (if (not (eq __motor_or_sensor_setup_fault :null)) (setq _motor_or_sensor_setup_fault __motor_or_sensor_setup_fault)) _motor_or_sensor_setup_fault)
  (:mosfet_failure
   (&optional (__mosfet_failure :null))
   (if (not (eq __mosfet_failure :null)) (setq _mosfet_failure __mosfet_failure)) _mosfet_failure)
  (:default_config_loaded_at_startup
   (&optional (__default_config_loaded_at_startup :null))
   (if (not (eq __default_config_loaded_at_startup :null)) (setq _default_config_loaded_at_startup __default_config_loaded_at_startup)) _default_config_loaded_at_startup)
  (:serialization-length
   ()
   (+
    ;; bool _can_net_err
    1
    ;; bool _overheat
    1
    ;; bool _overvoltage
    1
    ;; bool _undervoltage
    1
    ;; bool _short_circuit
    1
    ;; bool _emergency_stop
    1
    ;; bool _motor_or_sensor_setup_fault
    1
    ;; bool _mosfet_failure
    1
    ;; bool _default_config_loaded_at_startup
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _can_net_err
       (if _can_net_err (write-byte -1 s) (write-byte 0 s))
     ;; bool _overheat
       (if _overheat (write-byte -1 s) (write-byte 0 s))
     ;; bool _overvoltage
       (if _overvoltage (write-byte -1 s) (write-byte 0 s))
     ;; bool _undervoltage
       (if _undervoltage (write-byte -1 s) (write-byte 0 s))
     ;; bool _short_circuit
       (if _short_circuit (write-byte -1 s) (write-byte 0 s))
     ;; bool _emergency_stop
       (if _emergency_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _motor_or_sensor_setup_fault
       (if _motor_or_sensor_setup_fault (write-byte -1 s) (write-byte 0 s))
     ;; bool _mosfet_failure
       (if _mosfet_failure (write-byte -1 s) (write-byte 0 s))
     ;; bool _default_config_loaded_at_startup
       (if _default_config_loaded_at_startup (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _can_net_err
     (setq _can_net_err (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _overheat
     (setq _overheat (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _overvoltage
     (setq _overvoltage (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _undervoltage
     (setq _undervoltage (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _short_circuit
     (setq _short_circuit (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _emergency_stop
     (setq _emergency_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _motor_or_sensor_setup_fault
     (setq _motor_or_sensor_setup_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mosfet_failure
     (setq _mosfet_failure (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _default_config_loaded_at_startup
     (setq _default_config_loaded_at_startup (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get panther_msgs::FaultFlag :md5sum-) "5a07885f1bc8f54f267cfc6c4eab520b")
(setf (get panther_msgs::FaultFlag :datatype-) "panther_msgs/FaultFlag")
(setf (get panther_msgs::FaultFlag :definition-)
      "bool can_net_err
bool overheat
bool overvoltage
bool undervoltage
bool short_circuit
bool emergency_stop
bool motor_or_sensor_setup_fault
bool mosfet_failure
bool default_config_loaded_at_startup
")



(provide :panther_msgs/FaultFlag "5a07885f1bc8f54f267cfc6c4eab520b")


