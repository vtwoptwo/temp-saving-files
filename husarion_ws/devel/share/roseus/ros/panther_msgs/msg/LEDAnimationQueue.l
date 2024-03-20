;; Auto-generated. Do not edit!


(when (boundp 'panther_msgs::LEDAnimationQueue)
  (if (not (find-package "PANTHER_MSGS"))
    (make-package "PANTHER_MSGS"))
  (shadow 'LEDAnimationQueue (find-package "PANTHER_MSGS")))
(unless (find-package "PANTHER_MSGS::LEDANIMATIONQUEUE")
  (make-package "PANTHER_MSGS::LEDANIMATIONQUEUE"))

(in-package "ROS")
;;//! \htmlinclude LEDAnimationQueue.msg.html


(defclass panther_msgs::LEDAnimationQueue
  :super ros::object
  :slots (_queue ))

(defmethod panther_msgs::LEDAnimationQueue
  (:init
   (&key
    ((:queue __queue) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _queue __queue)
   self)
  (:queue
   (&optional __queue)
   (if __queue (setq _queue __queue)) _queue)
  (:serialization-length
   ()
   (+
    ;; string[] _queue
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _queue)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _queue
     (write-long (length _queue) s)
     (dolist (elem _queue)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _queue
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _queue (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _queue i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get panther_msgs::LEDAnimationQueue :md5sum-) "39f7d3ee4a5c2676f6070f72ebc81a53")
(setf (get panther_msgs::LEDAnimationQueue :datatype-) "panther_msgs/LEDAnimationQueue")
(setf (get panther_msgs::LEDAnimationQueue :definition-)
      "string[] queue
")



(provide :panther_msgs/LEDAnimationQueue "39f7d3ee4a5c2676f6070f72ebc81a53")


