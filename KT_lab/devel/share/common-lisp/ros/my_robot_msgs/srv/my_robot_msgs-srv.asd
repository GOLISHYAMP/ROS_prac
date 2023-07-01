
(cl:in-package :asdf)

(defsystem "my_robot_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "signal" :depends-on ("_package_signal"))
    (:file "_package_signal" :depends-on ("_package"))
  ))