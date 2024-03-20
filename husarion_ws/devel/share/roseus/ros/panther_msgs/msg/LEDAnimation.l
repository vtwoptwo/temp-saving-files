;; Auto-generated. Do not edit!


(when (boundp 'panther_msgs::LEDAnimation)
  (if (not (find-package "PANTHER_MSGS"))
    (make-package "PANTHER_MSGS"))
  (shadow 'LEDAnimation (find-package "PANTHER_MSGS")))
(unless (find-package "PANTHER_MSGS::LEDANIMATION")
  (make-package "PANTHER_MSGS::LEDANIMATION"))

(in-package "ROS")
;;//! \htmlinclude LEDAnimation.msg.html


(intern "*E_STOP*" (find-package "PANTHER_MSGS::LEDANIMATION"))
(shadow '*E_STOP* (find-package "PANTHER_MSGS::LEDANIMATION"))
(defconstant panther_msgs::LEDAnimation::*E_STOP* 0)
(intern "*READY*" (find-package "PANTHER_MSGS::LEDANIMATION"))
(shadow '*READY* (find-package "PANTHER_MSGS::LEDANIMATION"))
(defconstant panther_msgs::LEDAnimation::*READY* 1)
(intern "*ERROR*" (find-package "PANTHER_MSGS::LEDANIMATION"))
(shadow '*ERROR* (find-package "PANTHER_MSGS::LEDANIMATION"))
(defconstant panther_msgs::LEDAnimation::*ERROR* 2)
(intern "*MANUAL_ACTION*" (find-package "PANTHER_MSGS::LEDANIMATION"))
(shadow '*MANUAL_ACTION* (find-package "PANTHER_MSGS::LEDANIMATION"))
(defconstant panther_msgs::LEDAnimation::*MANUAL_ACTION* 3)
(intern "*AUTONOMOUS_ACTION*" (find-package "PANTHER_MSGS::LEDANIMATION"))
(shadow '*AUTONOMOUS_ACTION* (find-package "PANTHER_MSGS::LEDANIMATION"))
(defconstant panther_msgs::LEDAnimation::*AUTONOMOUS_ACTION* 4)
(intern "*GOAL_ACHIEVED*" (find-package "PANTHER_MSGS::LEDANIMATION"))
(shadow '*GOAL_ACHIEVED* (find-package "PANTHER_MSGS::LEDANIMATION"))
(defconstant panther_msgs::LEDAnimation::*GOAL_ACHIEVED* 5)
(intern "*LOW_BATTERY*" (find-package "PANTHER_MSGS::LEDANIMATION"))
(shadow '*LOW_BATTERY* (find-package "PANTHER_MSGS::LEDANIMATION"))
(defconstant panther_msgs::LEDAnimation::*LOW_BATTERY* 6)
(intern "*CRITICAL_BATTERY*" (find-package "PANTHER_MSGS::LEDANIMATION"))
(shadow '*CRITICAL_BATTERY* (find-package "PANTHER_MSGS::LEDANIMATION"))
(defconstant panther_msgs::LEDAnimation::*CRITICAL_BATTERY* 7)
(intern "*BATTERY_STATE*" (find-package "PANTHER_MSGS::LEDANIMATION"))
(shadow '*BATTERY_STATE* (find-package "PANTHER_MSGS::LEDANIMATION"))
(defconstant panther_msgs::LEDAnimation::*BATTERY_STATE* 8)
(intern "*CHARGING_BATTERY*" (find-package "PANTHER_MSGS::LEDANIMATION"))
(shadow '*CHARGING_BATTERY* (find-package "PANTHER_MSGS::LEDANIMATION"))
(defconstant panther_msgs::LEDAnimation::*CHARGING_BATTERY* 9)

(defun panther_msgs::LEDAnimation-to-symbol (const)
  (cond
        ((= const 0) 'panther_msgs::LEDAnimation::*E_STOP*)
        ((= const 1) 'panther_msgs::LEDAnimation::*READY*)
        ((= const 2) 'panther_msgs::LEDAnimation::*ERROR*)
        ((= const 3) 'panther_msgs::LEDAnimation::*MANUAL_ACTION*)
        ((= const 4) 'panther_msgs::LEDAnimation::*AUTONOMOUS_ACTION*)
        ((= const 5) 'panther_msgs::LEDAnimation::*GOAL_ACHIEVED*)
        ((= const 6) 'panther_msgs::LEDAnimation::*LOW_BATTERY*)
        ((= const 7) 'panther_msgs::LEDAnimation::*CRITICAL_BATTERY*)
        ((= const 8) 'panther_msgs::LEDAnimation::*BATTERY_STATE*)
        ((= const 9) 'panther_msgs::LEDAnimation::*CHARGING_BATTERY*)
        (t nil)))

(defclass panther_msgs::LEDAnimation
  :super ros::object
  :slots (_id _param ))

(defmethod panther_msgs::LEDAnimation
  (:init
   (&key
    ((:id __id) 0)
    ((:param __param) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _param (string __param))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:param
   (&optional __param)
   (if __param (setq _param __param)) _param)
  (:serialization-length
   ()
   (+
    ;; uint16 _id
    2
    ;; string _param
    4 (length _param)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _id
       (write-word _id s)
     ;; string _param
       (write-long (length _param) s) (princ _param s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _param
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get panther_msgs::LEDAnimation :md5sum-) "f659758618bdff822f0aa756076978cd")
(setf (get panther_msgs::LEDAnimation :datatype-) "panther_msgs/LEDAnimation")
(setf (get panther_msgs::LEDAnimation :definition-)
      "uint16 E_STOP = 0
uint16 READY = 1
uint16 ERROR = 2
uint16 MANUAL_ACTION = 3
uint16 AUTONOMOUS_ACTION = 4
uint16 GOAL_ACHIEVED = 5
uint16 LOW_BATTERY = 6
uint16 CRITICAL_BATTERY = 7
uint16 BATTERY_STATE = 8
uint16 CHARGING_BATTERY = 9

uint16 id
string param
")



(provide :panther_msgs/LEDAnimation "f659758618bdff822f0aa756076978cd")


