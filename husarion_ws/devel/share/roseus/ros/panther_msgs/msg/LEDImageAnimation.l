;; Auto-generated. Do not edit!


(when (boundp 'panther_msgs::LEDImageAnimation)
  (if (not (find-package "PANTHER_MSGS"))
    (make-package "PANTHER_MSGS"))
  (shadow 'LEDImageAnimation (find-package "PANTHER_MSGS")))
(unless (find-package "PANTHER_MSGS::LEDIMAGEANIMATION")
  (make-package "PANTHER_MSGS::LEDIMAGEANIMATION"))

(in-package "ROS")
;;//! \htmlinclude LEDImageAnimation.msg.html


(defclass panther_msgs::LEDImageAnimation
  :super ros::object
  :slots (_image _duration _brightness _repeat _color ))

(defmethod panther_msgs::LEDImageAnimation
  (:init
   (&key
    ((:image __image) "")
    ((:duration __duration) 0.0)
    ((:brightness __brightness) 0.0)
    ((:repeat __repeat) 0)
    ((:color __color) 0)
    )
   (send-super :init)
   (setq _image (string __image))
   (setq _duration (float __duration))
   (setq _brightness (float __brightness))
   (setq _repeat (round __repeat))
   (setq _color (round __color))
   self)
  (:image
   (&optional __image)
   (if __image (setq _image __image)) _image)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:brightness
   (&optional __brightness)
   (if __brightness (setq _brightness __brightness)) _brightness)
  (:repeat
   (&optional __repeat)
   (if __repeat (setq _repeat __repeat)) _repeat)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:serialization-length
   ()
   (+
    ;; string _image
    4 (length _image)
    ;; float32 _duration
    4
    ;; float32 _brightness
    4
    ;; uint8 _repeat
    1
    ;; uint32 _color
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _image
       (write-long (length _image) s) (princ _image s)
     ;; float32 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brightness
       (sys::poke _brightness (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _repeat
       (write-byte _repeat s)
     ;; uint32 _color
       (write-long _color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _image
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _image (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _duration
     (setq _duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brightness
     (setq _brightness (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _repeat
     (setq _repeat (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _color
     (setq _color (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get panther_msgs::LEDImageAnimation :md5sum-) "e28603d00b7f8b45434019f01a6bcf71")
(setf (get panther_msgs::LEDImageAnimation :datatype-) "panther_msgs/LEDImageAnimation")
(setf (get panther_msgs::LEDImageAnimation :definition-)
      "string image
float32 duration
float32 brightness
uint8 repeat
uint32 color
")



(provide :panther_msgs/LEDImageAnimation "e28603d00b7f8b45434019f01a6bcf71")


