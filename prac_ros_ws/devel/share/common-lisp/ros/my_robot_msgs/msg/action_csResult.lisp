; Auto-generated. Do not edit!


(cl:in-package my_robot_msgs-msg)


;//! \htmlinclude action_csResult.msg.html

(cl:defclass <action_csResult> (roslisp-msg-protocol:ros-message)
  ((str
    :reader str
    :initarg :str
    :type cl:string
    :initform ""))
)

(cl:defclass action_csResult (<action_csResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <action_csResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'action_csResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-msg:<action_csResult> is deprecated: use my_robot_msgs-msg:action_csResult instead.")))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <action_csResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-msg:str-val is deprecated.  Use my_robot_msgs-msg:str instead.")
  (str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <action_csResult>) ostream)
  "Serializes a message object of type '<action_csResult>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <action_csResult>) istream)
  "Deserializes a message object of type '<action_csResult>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<action_csResult>)))
  "Returns string type for a message object of type '<action_csResult>"
  "my_robot_msgs/action_csResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'action_csResult)))
  "Returns string type for a message object of type 'action_csResult"
  "my_robot_msgs/action_csResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<action_csResult>)))
  "Returns md5sum for a message object of type '<action_csResult>"
  "994972b6e03928b2476860ce6c4c8e17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'action_csResult)))
  "Returns md5sum for a message object of type 'action_csResult"
  "994972b6e03928b2476860ce6c4c8e17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<action_csResult>)))
  "Returns full string definition for message of type '<action_csResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%string str~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'action_csResult)))
  "Returns full string definition for message of type 'action_csResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%string str~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <action_csResult>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <action_csResult>))
  "Converts a ROS message object to a list"
  (cl:list 'action_csResult
    (cl:cons ':str (str msg))
))
