; Auto-generated. Do not edit!


(cl:in-package my_robot_msgs-msg)


;//! \htmlinclude signal.msg.html

(cl:defclass <signal> (roslisp-msg-protocol:ros-message)
  ((signal_color
    :reader signal_color
    :initarg :signal_color
    :type cl:string
    :initform "")
   (signal_number
    :reader signal_number
    :initarg :signal_number
    :type cl:integer
    :initform 0))
)

(cl:defclass signal (<signal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <signal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'signal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-msg:<signal> is deprecated: use my_robot_msgs-msg:signal instead.")))

(cl:ensure-generic-function 'signal_color-val :lambda-list '(m))
(cl:defmethod signal_color-val ((m <signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-msg:signal_color-val is deprecated.  Use my_robot_msgs-msg:signal_color instead.")
  (signal_color m))

(cl:ensure-generic-function 'signal_number-val :lambda-list '(m))
(cl:defmethod signal_number-val ((m <signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-msg:signal_number-val is deprecated.  Use my_robot_msgs-msg:signal_number instead.")
  (signal_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <signal>) ostream)
  "Serializes a message object of type '<signal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signal_color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signal_color))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <signal>) istream)
  "Deserializes a message object of type '<signal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal_color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'signal_color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<signal>)))
  "Returns string type for a message object of type '<signal>"
  "my_robot_msgs/signal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'signal)))
  "Returns string type for a message object of type 'signal"
  "my_robot_msgs/signal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<signal>)))
  "Returns md5sum for a message object of type '<signal>"
  "2b51f0318452418723219cbc46255f5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'signal)))
  "Returns md5sum for a message object of type 'signal"
  "2b51f0318452418723219cbc46255f5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<signal>)))
  "Returns full string definition for message of type '<signal>"
  (cl:format cl:nil "string signal_color~%int64 signal_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'signal)))
  "Returns full string definition for message of type 'signal"
  (cl:format cl:nil "string signal_color~%int64 signal_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <signal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'signal_color))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <signal>))
  "Converts a ROS message object to a list"
  (cl:list 'signal
    (cl:cons ':signal_color (signal_color msg))
    (cl:cons ':signal_number (signal_number msg))
))
