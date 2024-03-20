;; Auto-generated. Do not edit!


(when (boundp 'panther_msgs::IOState)
  (if (not (find-package "PANTHER_MSGS"))
    (make-package "PANTHER_MSGS"))
  (shadow 'IOState (find-package "PANTHER_MSGS")))
(unless (find-package "PANTHER_MSGS::IOSTATE")
  (make-package "PANTHER_MSGS::IOSTATE"))

(in-package "ROS")
;;//! \htmlinclude IOState.msg.html


(defclass panther_msgs::IOState
  :super ros::object
  :slots (_aux_power _charger_connected _charger_enabled _digital_power _fan _motor_power _power_button ))

(defmethod panther_msgs::IOState
  (:init
   (&key
    ((:aux_power __aux_power) nil)
    ((:charger_connected __charger_connected) nil)
    ((:charger_enabled __charger_enabled) nil)
    ((:digital_power __digital_power) nil)
    ((:fan __fan) nil)
    ((:motor_power __motor_power) nil)
    ((:power_button __power_button) nil)
    )
   (send-super :init)
   (setq _aux_power __aux_power)
   (setq _charger_connected __charger_connected)
   (setq _charger_enabled __charger_enabled)
   (setq _digital_power __digital_power)
   (setq _fan __fan)
   (setq _motor_power __motor_power)
   (setq _power_button __power_button)
   self)
  (:aux_power
   (&optional (__aux_power :null))
   (if (not (eq __aux_power :null)) (setq _aux_power __aux_power)) _aux_power)
  (:charger_connected
   (&optional (__charger_connected :null))
   (if (not (eq __charger_connected :null)) (setq _charger_connected __charger_connected)) _charger_connected)
  (:charger_enabled
   (&optional (__charger_enabled :null))
   (if (not (eq __charger_enabled :null)) (setq _charger_enabled __charger_enabled)) _charger_enabled)
  (:digital_power
   (&optional (__digital_power :null))
   (if (not (eq __digital_power :null)) (setq _digital_power __digital_power)) _digital_power)
  (:fan
   (&optional (__fan :null))
   (if (not (eq __fan :null)) (setq _fan __fan)) _fan)
  (:motor_power
   (&optional (__motor_power :null))
   (if (not (eq __motor_power :null)) (setq _motor_power __motor_power)) _motor_power)
  (:power_button
   (&optional (__power_button :null))
   (if (not (eq __power_button :null)) (setq _power_button __power_button)) _power_button)
  (:serialization-length
   ()
   (+
    ;; bool _aux_power
    1
    ;; bool _charger_connected
    1
    ;; bool _charger_enabled
    1
    ;; bool _digital_power
    1
    ;; bool _fan
    1
    ;; bool _motor_power
    1
    ;; bool _power_button
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _aux_power
       (if _aux_power (write-byte -1 s) (write-byte 0 s))
     ;; bool _charger_connected
       (if _charger_connected (write-byte -1 s) (write-byte 0 s))
     ;; bool _charger_enabled
       (if _charger_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _digital_power
       (if _digital_power (write-byte -1 s) (write-byte 0 s))
     ;; bool _fan
       (if _fan (write-byte -1 s) (write-byte 0 s))
     ;; bool _motor_power
       (if _motor_power (write-byte -1 s) (write-byte 0 s))
     ;; bool _power_button
       (if _power_button (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _aux_power
     (setq _aux_power (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _charger_connected
     (setq _charger_connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _charger_enabled
     (setq _charger_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _digital_power
     (setq _digital_power (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fan
     (setq _fan (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _motor_power
     (setq _motor_power (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _power_button
     (setq _power_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get panther_msgs::IOState :md5sum-) "9355949f9d224eb1c84d18ab411d0e55")
(setf (get panther_msgs::IOState :datatype-) "panther_msgs/IOState")
(setf (get panther_msgs::IOState :definition-)
      "bool aux_power
bool charger_connected
bool charger_enabled
bool digital_power
bool fan
bool motor_power
bool power_button
")



(provide :panther_msgs/IOState "9355949f9d224eb1c84d18ab411d0e55")


