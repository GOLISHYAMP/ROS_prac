; Auto-generated. Do not edit!


(cl:in-package my_robot_msgs-msg)


;//! \htmlinclude simple_actionResult.msg.html

(cl:defclass <simple_actionResult> (roslisp-msg-protocol:ros-message)
  ((waited_duration
    :reader waited_duration
    :initarg :waited_duration
    :type cl:integer
    :initform 0))
)

(cl:defclass simple_actionResult (<simple_actionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simple_actionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simple_actionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-msg:<simple_actionResult> is deprecated: use my_robot_msgs-msg:simple_actionResult instead.")))

(cl:ensure-generic-function 'waited_duration-val :lambda-list '(m))
(cl:defmethod waited_duration-val ((m <simple_actionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-msg:waited_duration-val is deprecated.  Use my_robot_msgs-msg:waited_duration instead.")
  (waited_duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simple_actionResult>) ostream)
  "Serializes a message object of type '<simple_actionResult>"
  (cl:let* ((signed (cl:slot-value msg 'waited_duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simple_actionResult>) istream)
  "Deserializes a message object of type '<simple_actionResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'waited_duration) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simple_actionResult>)))
  "Returns string type for a message object of type '<simple_actionResult>"
  "my_robot_msgs/simple_actionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simple_actionResult)))
  "Returns string type for a message object of type 'simple_actionResult"
  "my_robot_msgs/simple_actionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simple_actionResult>)))
  "Returns md5sum for a message object of type '<simple_actionResult>"
  "e61c59ff9e457607cf80eb990f19d4d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simple_actionResult)))
  "Returns md5sum for a message object of type 'simple_actionResult"
  "e61c59ff9e457607cf80eb990f19d4d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simple_actionResult>)))
  "Returns full string definition for message of type '<simple_actionResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%int64 waited_duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simple_actionResult)))
  "Returns full string definition for message of type 'simple_actionResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%int64 waited_duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simple_actionResult>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simple_actionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'simple_actionResult
    (cl:cons ':waited_duration (waited_duration msg))
))
