
(cl:in-package :asdf)

(defsystem "my_robot_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "num_srv" :depends-on ("_package_num_srv"))
    (:file "_package_num_srv" :depends-on ("_package"))
  ))