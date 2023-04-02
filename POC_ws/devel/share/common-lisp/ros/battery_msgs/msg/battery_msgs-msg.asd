
(cl:in-package :asdf)

(defsystem "battery_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "battery_status" :depends-on ("_package_battery_status"))
    (:file "_package_battery_status" :depends-on ("_package"))
  ))