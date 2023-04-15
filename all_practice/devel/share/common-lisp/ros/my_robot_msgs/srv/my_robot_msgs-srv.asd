
(cl:in-package :asdf)

(defsystem "my_robot_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "sig" :depends-on ("_package_sig"))
    (:file "_package_sig" :depends-on ("_package"))
  ))