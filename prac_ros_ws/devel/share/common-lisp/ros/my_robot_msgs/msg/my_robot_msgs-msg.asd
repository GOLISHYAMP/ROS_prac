
(cl:in-package :asdf)

(defsystem "my_robot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "num_actionAction" :depends-on ("_package_num_actionAction"))
    (:file "_package_num_actionAction" :depends-on ("_package"))
    (:file "num_actionActionFeedback" :depends-on ("_package_num_actionActionFeedback"))
    (:file "_package_num_actionActionFeedback" :depends-on ("_package"))
    (:file "num_actionActionGoal" :depends-on ("_package_num_actionActionGoal"))
    (:file "_package_num_actionActionGoal" :depends-on ("_package"))
    (:file "num_actionActionResult" :depends-on ("_package_num_actionActionResult"))
    (:file "_package_num_actionActionResult" :depends-on ("_package"))
    (:file "num_actionFeedback" :depends-on ("_package_num_actionFeedback"))
    (:file "_package_num_actionFeedback" :depends-on ("_package"))
    (:file "num_actionGoal" :depends-on ("_package_num_actionGoal"))
    (:file "_package_num_actionGoal" :depends-on ("_package"))
    (:file "num_actionResult" :depends-on ("_package_num_actionResult"))
    (:file "_package_num_actionResult" :depends-on ("_package"))
    (:file "number" :depends-on ("_package_number"))
    (:file "_package_number" :depends-on ("_package"))
  ))