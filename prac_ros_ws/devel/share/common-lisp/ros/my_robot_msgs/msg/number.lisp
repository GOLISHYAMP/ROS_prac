; Auto-generated. Do not edit!


(cl:in-package my_robot_msgs-msg)


;//! \htmlinclude number.msg.html

(cl:defclass <number> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass number (<number>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <number>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'number)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-msg:<number> is deprecated: use my_robot_msgs-msg:number instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <number>) ostream)
  "Serializes a message object of type '<number>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <number>) istream)
  "Deserializes a message object of type '<number>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<number>)))
  "Returns string type for a message object of type '<number>"
  "my_robot_msgs/number")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'number)))
  "Returns string type for a message object of type 'number"
  "my_robot_msgs/number")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<number>)))
  "Returns md5sum for a message object of type '<number>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'number)))
  "Returns md5sum for a message object of type 'number"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<number>)))
  "Returns full string definition for message of type '<number>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'number)))
  "Returns full string definition for message of type 'number"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <number>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <number>))
  "Converts a ROS message object to a list"
  (cl:list 'number
))
