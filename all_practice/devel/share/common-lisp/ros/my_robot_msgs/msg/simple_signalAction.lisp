; Auto-generated. Do not edit!


(cl:in-package my_robot_msgs-msg)


;//! \htmlinclude simple_signalAction.msg.html

(cl:defclass <simple_signalAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type my_robot_msgs-msg:simple_signalActionGoal
    :initform (cl:make-instance 'my_robot_msgs-msg:simple_signalActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type my_robot_msgs-msg:simple_signalActionResult
    :initform (cl:make-instance 'my_robot_msgs-msg:simple_signalActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type my_robot_msgs-msg:simple_signalActionFeedback
    :initform (cl:make-instance 'my_robot_msgs-msg:simple_signalActionFeedback)))
)

(cl:defclass simple_signalAction (<simple_signalAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simple_signalAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simple_signalAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-msg:<simple_signalAction> is deprecated: use my_robot_msgs-msg:simple_signalAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <simple_signalAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-msg:action_goal-val is deprecated.  Use my_robot_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <simple_signalAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-msg:action_result-val is deprecated.  Use my_robot_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <simple_signalAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-msg:action_feedback-val is deprecated.  Use my_robot_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simple_signalAction>) ostream)
  "Serializes a message object of type '<simple_signalAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simple_signalAction>) istream)
  "Deserializes a message object of type '<simple_signalAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simple_signalAction>)))
  "Returns string type for a message object of type '<simple_signalAction>"
  "my_robot_msgs/simple_signalAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simple_signalAction)))
  "Returns string type for a message object of type 'simple_signalAction"
  "my_robot_msgs/simple_signalAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simple_signalAction>)))
  "Returns md5sum for a message object of type '<simple_signalAction>"
  "700a0b10f7cb1d75b8c1c2fc8b93b21f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simple_signalAction)))
  "Returns md5sum for a message object of type 'simple_signalAction"
  "700a0b10f7cb1d75b8c1c2fc8b93b21f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simple_signalAction>)))
  "Returns full string definition for message of type '<simple_signalAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%simple_signalActionGoal action_goal~%simple_signalActionResult action_result~%simple_signalActionFeedback action_feedback~%~%================================================================================~%MSG: my_robot_msgs/simple_signalActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%simple_signalGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: my_robot_msgs/simple_signalGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%float64 wait_duration~%int64 signal_number~%~%================================================================================~%MSG: my_robot_msgs/simple_signalActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%simple_signalResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: my_robot_msgs/simple_signalResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%int64 waited_duration~%~%================================================================================~%MSG: my_robot_msgs/simple_signalActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%simple_signalFeedback feedback~%~%================================================================================~%MSG: my_robot_msgs/simple_signalFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%float64 percentage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simple_signalAction)))
  "Returns full string definition for message of type 'simple_signalAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%simple_signalActionGoal action_goal~%simple_signalActionResult action_result~%simple_signalActionFeedback action_feedback~%~%================================================================================~%MSG: my_robot_msgs/simple_signalActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%simple_signalGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: my_robot_msgs/simple_signalGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%float64 wait_duration~%int64 signal_number~%~%================================================================================~%MSG: my_robot_msgs/simple_signalActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%simple_signalResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: my_robot_msgs/simple_signalResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%int64 waited_duration~%~%================================================================================~%MSG: my_robot_msgs/simple_signalActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%simple_signalFeedback feedback~%~%================================================================================~%MSG: my_robot_msgs/simple_signalFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%float64 percentage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simple_signalAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simple_signalAction>))
  "Converts a ROS message object to a list"
  (cl:list 'simple_signalAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
