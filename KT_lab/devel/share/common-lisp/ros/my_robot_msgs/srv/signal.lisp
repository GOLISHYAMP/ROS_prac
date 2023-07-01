; Auto-generated. Do not edit!


(cl:in-package my_robot_msgs-srv)


;//! \htmlinclude signal-request.msg.html

(cl:defclass <signal-request> (roslisp-msg-protocol:ros-message)
  ((signal_number
    :reader signal_number
    :initarg :signal_number
    :type cl:integer
    :initform 0))
)

(cl:defclass signal-request (<signal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <signal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'signal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-srv:<signal-request> is deprecated: use my_robot_msgs-srv:signal-request instead.")))

(cl:ensure-generic-function 'signal_number-val :lambda-list '(m))
(cl:defmethod signal_number-val ((m <signal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:signal_number-val is deprecated.  Use my_robot_msgs-srv:signal_number instead.")
  (signal_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <signal-request>) ostream)
  "Serializes a message object of type '<signal-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <signal-request>) istream)
  "Deserializes a message object of type '<signal-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<signal-request>)))
  "Returns string type for a service object of type '<signal-request>"
  "my_robot_msgs/signalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'signal-request)))
  "Returns string type for a service object of type 'signal-request"
  "my_robot_msgs/signalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<signal-request>)))
  "Returns md5sum for a message object of type '<signal-request>"
  "f69cbcdad8e751aa0b4f314d7baa16e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'signal-request)))
  "Returns md5sum for a message object of type 'signal-request"
  "f69cbcdad8e751aa0b4f314d7baa16e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<signal-request>)))
  "Returns full string definition for message of type '<signal-request>"
  (cl:format cl:nil "int64 signal_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'signal-request)))
  "Returns full string definition for message of type 'signal-request"
  (cl:format cl:nil "int64 signal_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <signal-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <signal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'signal-request
    (cl:cons ':signal_number (signal_number msg))
))
;//! \htmlinclude signal-response.msg.html

(cl:defclass <signal-response> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass signal-response (<signal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <signal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'signal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-srv:<signal-response> is deprecated: use my_robot_msgs-srv:signal-response instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <signal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:color-val is deprecated.  Use my_robot_msgs-srv:color instead.")
  (color m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <signal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:message-val is deprecated.  Use my_robot_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <signal-response>) ostream)
  "Serializes a message object of type '<signal-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <signal-response>) istream)
  "Deserializes a message object of type '<signal-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<signal-response>)))
  "Returns string type for a service object of type '<signal-response>"
  "my_robot_msgs/signalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'signal-response)))
  "Returns string type for a service object of type 'signal-response"
  "my_robot_msgs/signalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<signal-response>)))
  "Returns md5sum for a message object of type '<signal-response>"
  "f69cbcdad8e751aa0b4f314d7baa16e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'signal-response)))
  "Returns md5sum for a message object of type 'signal-response"
  "f69cbcdad8e751aa0b4f314d7baa16e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<signal-response>)))
  "Returns full string definition for message of type '<signal-response>"
  (cl:format cl:nil "string color~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'signal-response)))
  "Returns full string definition for message of type 'signal-response"
  (cl:format cl:nil "string color~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <signal-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'color))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <signal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'signal-response
    (cl:cons ':color (color msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'signal)))
  'signal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'signal)))
  'signal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'signal)))
  "Returns string type for a service object of type '<signal>"
  "my_robot_msgs/signal")