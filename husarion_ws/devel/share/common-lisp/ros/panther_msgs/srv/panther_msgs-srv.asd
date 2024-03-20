
(cl:in-package :asdf)

(defsystem "panther_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :panther_msgs-msg
)
  :components ((:file "_package")
    (:file "SetLEDAnimation" :depends-on ("_package_SetLEDAnimation"))
    (:file "_package_SetLEDAnimation" :depends-on ("_package"))
    (:file "SetLEDBrightness" :depends-on ("_package_SetLEDBrightness"))
    (:file "_package_SetLEDBrightness" :depends-on ("_package"))
    (:file "SetLEDImageAnimation" :depends-on ("_package_SetLEDImageAnimation"))
    (:file "_package_SetLEDImageAnimation" :depends-on ("_package"))
  ))