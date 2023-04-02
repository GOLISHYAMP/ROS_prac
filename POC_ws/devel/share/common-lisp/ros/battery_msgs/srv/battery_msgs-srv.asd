
(cl:in-package :asdf)

(defsystem "battery_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "button" :depends-on ("_package_button"))
    (:file "_package_button" :depends-on ("_package"))
    (:file "compute_battery" :depends-on ("_package_compute_battery"))
    (:file "_package_compute_battery" :depends-on ("_package"))
  ))