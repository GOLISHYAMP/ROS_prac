; Auto-generated. Do not edit!


(cl:in-package my_robot_msgs-msg)


;//! \htmlinclude simple_signalFeedback.msg.html

(cl:defclass <simple_signalFeedback> (roslisp-msg-protocol:ros-message)
  ((percentage
    :reader percentage
    :initarg :percentage
    :type cl:float
    :initform 0.0))
)

(cl:defclass simple_signalFeedback (<simple_signalFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simple_signalFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simple_signalFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-msg:<simple_signalFeedback> is deprecated: use my_robot_msgs-msg:simple_signalFeedback instead.")))

(cl:ensure-generic-function 'percentage-val :lambda-list '(m))
(cl:defmethod percentage-val ((m <simple_signalFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-msg:percentage-val is deprecated.  Use my_robot_msgs-msg:percentage instead.")
  (percentage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simple_signalFeedback>) ostream)
  "Serializes a message object of type '<simple_signalFeedback>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simple_signalFeedback>) istream)
  "Deserializes a message object of type '<simple_signalFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percentage) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simple_signalFeedback>)))
  "Returns string type for a message object of type '<simple_signalFeedback>"
  "my_robot_msgs/simple_signalFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simple_signalFeedback)))
  "Returns string type for a message object of type 'simple_signalFeedback"
  "my_robot_msgs/simple_signalFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simple_signalFeedback>)))
  "Returns md5sum for a message object of type '<simple_signalFeedback>"
  "46302a97c06fe5a4416c427fe6ee8804")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simple_signalFeedback)))
  "Returns md5sum for a message object of type 'simple_signalFeedback"
  "46302a97c06fe5a4416c427fe6ee8804")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simple_signalFeedback>)))
  "Returns full string definition for message of type '<simple_signalFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%float64 percentage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simple_signalFeedback)))
  "Returns full string definition for message of type 'simple_signalFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%float64 percentage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simple_signalFeedback>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simple_signalFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'simple_signalFeedback
    (cl:cons ':percentage (percentage msg))
))