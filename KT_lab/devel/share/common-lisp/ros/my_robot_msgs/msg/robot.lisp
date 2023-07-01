; Auto-generated. Do not edit!


(cl:in-package my_robot_msgs-msg)


;//! \htmlinclude robot.msg.html

(cl:defclass <robot> (roslisp-msg-protocol:ros-message)
  ((signal_number
    :reader signal_number
    :initarg :signal_number
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass robot (<robot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-msg:<robot> is deprecated: use my_robot_msgs-msg:robot instead.")))

(cl:ensure-generic-function 'signal_number-val :lambda-list '(m))
(cl:defmethod signal_number-val ((m <robot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-msg:signal_number-val is deprecated.  Use my_robot_msgs-msg:signal_number instead.")
  (signal_number m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <robot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-msg:message-val is deprecated.  Use my_robot_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot>) ostream)
  "Serializes a message object of type '<robot>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot>) istream)
  "Deserializes a message object of type '<robot>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot>)))
  "Returns string type for a message object of type '<robot>"
  "my_robot_msgs/robot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot)))
  "Returns string type for a message object of type 'robot"
  "my_robot_msgs/robot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot>)))
  "Returns md5sum for a message object of type '<robot>"
  "ab597da5ada892a08fde55bf769237dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot)))
  "Returns md5sum for a message object of type 'robot"
  "ab597da5ada892a08fde55bf769237dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot>)))
  "Returns full string definition for message of type '<robot>"
  (cl:format cl:nil "int64 signal_number~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot)))
  "Returns full string definition for message of type 'robot"
  (cl:format cl:nil "int64 signal_number~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot>))
  "Converts a ROS message object to a list"
  (cl:list 'robot
    (cl:cons ':signal_number (signal_number msg))
    (cl:cons ':message (message msg))
))
