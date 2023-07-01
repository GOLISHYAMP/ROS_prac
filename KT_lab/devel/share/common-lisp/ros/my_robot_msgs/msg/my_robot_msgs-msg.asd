
(cl:in-package :asdf)

(defsystem "my_robot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "robot" :depends-on ("_package_robot"))
    (:file "_package_robot" :depends-on ("_package"))
    (:file "simple_actionAction" :depends-on ("_package_simple_actionAction"))
    (:file "_package_simple_actionAction" :depends-on ("_package"))
    (:file "simple_actionActionFeedback" :depends-on ("_package_simple_actionActionFeedback"))
    (:file "_package_simple_actionActionFeedback" :depends-on ("_package"))
    (:file "simple_actionActionGoal" :depends-on ("_package_simple_actionActionGoal"))
    (:file "_package_simple_actionActionGoal" :depends-on ("_package"))
    (:file "simple_actionActionResult" :depends-on ("_package_simple_actionActionResult"))
    (:file "_package_simple_actionActionResult" :depends-on ("_package"))
    (:file "simple_actionFeedback" :depends-on ("_package_simple_actionFeedback"))
    (:file "_package_simple_actionFeedback" :depends-on ("_package"))
    (:file "simple_actionGoal" :depends-on ("_package_simple_actionGoal"))
    (:file "_package_simple_actionGoal" :depends-on ("_package"))
    (:file "simple_actionResult" :depends-on ("_package_simple_actionResult"))
    (:file "_package_simple_actionResult" :depends-on ("_package"))
  ))