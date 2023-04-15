
(cl:in-package :asdf)

(defsystem "my_robot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "signal" :depends-on ("_package_signal"))
    (:file "_package_signal" :depends-on ("_package"))
    (:file "simple_signalAction" :depends-on ("_package_simple_signalAction"))
    (:file "_package_simple_signalAction" :depends-on ("_package"))
    (:file "simple_signalActionFeedback" :depends-on ("_package_simple_signalActionFeedback"))
    (:file "_package_simple_signalActionFeedback" :depends-on ("_package"))
    (:file "simple_signalActionGoal" :depends-on ("_package_simple_signalActionGoal"))
    (:file "_package_simple_signalActionGoal" :depends-on ("_package"))
    (:file "simple_signalActionResult" :depends-on ("_package_simple_signalActionResult"))
    (:file "_package_simple_signalActionResult" :depends-on ("_package"))
    (:file "simple_signalFeedback" :depends-on ("_package_simple_signalFeedback"))
    (:file "_package_simple_signalFeedback" :depends-on ("_package"))
    (:file "simple_signalGoal" :depends-on ("_package_simple_signalGoal"))
    (:file "_package_simple_signalGoal" :depends-on ("_package"))
    (:file "simple_signalResult" :depends-on ("_package_simple_signalResult"))
    (:file "_package_simple_signalResult" :depends-on ("_package"))
  ))