; Auto-generated. Do not edit!


(cl:in-package my_robot_msgs-srv)


;//! \htmlinclude sig-request.msg.html

(cl:defclass <sig-request> (roslisp-msg-protocol:ros-message)
  ((signal_number
    :reader signal_number
    :initarg :signal_number
    :type cl:integer
    :initform 0))
)

(cl:defclass sig-request (<sig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-srv:<sig-request> is deprecated: use my_robot_msgs-srv:sig-request instead.")))

(cl:ensure-generic-function 'signal_number-val :lambda-list '(m))
(cl:defmethod signal_number-val ((m <sig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:signal_number-val is deprecated.  Use my_robot_msgs-srv:signal_number instead.")
  (signal_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sig-request>) ostream)
  "Serializes a message object of type '<sig-request>"
  (cl:let* ((signed (cl:slot-value msg 'signal_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sig-request>) istream)
  "Deserializes a message object of type '<sig-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal_number) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sig-request>)))
  "Returns string type for a service object of type '<sig-request>"
  "my_robot_msgs/sigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sig-request)))
  "Returns string type for a service object of type 'sig-request"
  "my_robot_msgs/sigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sig-request>)))
  "Returns md5sum for a message object of type '<sig-request>"
  "7bc8af7403a190711a182edad0f2139d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sig-request)))
  "Returns md5sum for a message object of type 'sig-request"
  "7bc8af7403a190711a182edad0f2139d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sig-request>)))
  "Returns full string definition for message of type '<sig-request>"
  (cl:format cl:nil "int64 signal_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sig-request)))
  "Returns full string definition for message of type 'sig-request"
  (cl:format cl:nil "int64 signal_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sig-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'sig-request
    (cl:cons ':signal_number (signal_number msg))
))
;//! \htmlinclude sig-response.msg.html

(cl:defclass <sig-response> (roslisp-msg-protocol:ros-message)
  ((signal_color
    :reader signal_color
    :initarg :signal_color
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass sig-response (<sig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-srv:<sig-response> is deprecated: use my_robot_msgs-srv:sig-response instead.")))

(cl:ensure-generic-function 'signal_color-val :lambda-list '(m))
(cl:defmethod signal_color-val ((m <sig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:signal_color-val is deprecated.  Use my_robot_msgs-srv:signal_color instead.")
  (signal_color m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <sig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:message-val is deprecated.  Use my_robot_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sig-response>) ostream)
  "Serializes a message object of type '<sig-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signal_color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signal_color))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sig-response>) istream)
  "Deserializes a message object of type '<sig-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal_color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'signal_color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sig-response>)))
  "Returns string type for a service object of type '<sig-response>"
  "my_robot_msgs/sigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sig-response)))
  "Returns string type for a service object of type 'sig-response"
  "my_robot_msgs/sigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sig-response>)))
  "Returns md5sum for a message object of type '<sig-response>"
  "7bc8af7403a190711a182edad0f2139d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sig-response)))
  "Returns md5sum for a message object of type 'sig-response"
  "7bc8af7403a190711a182edad0f2139d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sig-response>)))
  "Returns full string definition for message of type '<sig-response>"
  (cl:format cl:nil "string signal_color~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sig-response)))
  "Returns full string definition for message of type 'sig-response"
  (cl:format cl:nil "string signal_color~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sig-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'signal_color))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'sig-response
    (cl:cons ':signal_color (signal_color msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'sig)))
  'sig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'sig)))
  'sig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sig)))
  "Returns string type for a service object of type '<sig>"
  "my_robot_msgs/sig")