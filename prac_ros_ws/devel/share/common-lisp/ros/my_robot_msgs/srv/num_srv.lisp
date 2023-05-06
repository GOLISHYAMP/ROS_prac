; Auto-generated. Do not edit!


(cl:in-package my_robot_msgs-srv)


;//! \htmlinclude num_srv-request.msg.html

(cl:defclass <num_srv-request> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0))
)

(cl:defclass num_srv-request (<num_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <num_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'num_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-srv:<num_srv-request> is deprecated: use my_robot_msgs-srv:num_srv-request instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <num_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:num-val is deprecated.  Use my_robot_msgs-srv:num instead.")
  (num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <num_srv-request>) ostream)
  "Serializes a message object of type '<num_srv-request>"
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <num_srv-request>) istream)
  "Deserializes a message object of type '<num_srv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<num_srv-request>)))
  "Returns string type for a service object of type '<num_srv-request>"
  "my_robot_msgs/num_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'num_srv-request)))
  "Returns string type for a service object of type 'num_srv-request"
  "my_robot_msgs/num_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<num_srv-request>)))
  "Returns md5sum for a message object of type '<num_srv-request>"
  "fa0a9a2a723d413abaf66f55c0bec788")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'num_srv-request)))
  "Returns md5sum for a message object of type 'num_srv-request"
  "fa0a9a2a723d413abaf66f55c0bec788")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<num_srv-request>)))
  "Returns full string definition for message of type '<num_srv-request>"
  (cl:format cl:nil "int64 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'num_srv-request)))
  "Returns full string definition for message of type 'num_srv-request"
  (cl:format cl:nil "int64 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <num_srv-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <num_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'num_srv-request
    (cl:cons ':num (num msg))
))
;//! \htmlinclude num_srv-response.msg.html

(cl:defclass <num_srv-response> (roslisp-msg-protocol:ros-message)
  ((str
    :reader str
    :initarg :str
    :type cl:string
    :initform ""))
)

(cl:defclass num_srv-response (<num_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <num_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'num_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-srv:<num_srv-response> is deprecated: use my_robot_msgs-srv:num_srv-response instead.")))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <num_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:str-val is deprecated.  Use my_robot_msgs-srv:str instead.")
  (str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <num_srv-response>) ostream)
  "Serializes a message object of type '<num_srv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <num_srv-response>) istream)
  "Deserializes a message object of type '<num_srv-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<num_srv-response>)))
  "Returns string type for a service object of type '<num_srv-response>"
  "my_robot_msgs/num_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'num_srv-response)))
  "Returns string type for a service object of type 'num_srv-response"
  "my_robot_msgs/num_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<num_srv-response>)))
  "Returns md5sum for a message object of type '<num_srv-response>"
  "fa0a9a2a723d413abaf66f55c0bec788")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'num_srv-response)))
  "Returns md5sum for a message object of type 'num_srv-response"
  "fa0a9a2a723d413abaf66f55c0bec788")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<num_srv-response>)))
  "Returns full string definition for message of type '<num_srv-response>"
  (cl:format cl:nil "string str~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'num_srv-response)))
  "Returns full string definition for message of type 'num_srv-response"
  (cl:format cl:nil "string str~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <num_srv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <num_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'num_srv-response
    (cl:cons ':str (str msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'num_srv)))
  'num_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'num_srv)))
  'num_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'num_srv)))
  "Returns string type for a service object of type '<num_srv>"
  "my_robot_msgs/num_srv")