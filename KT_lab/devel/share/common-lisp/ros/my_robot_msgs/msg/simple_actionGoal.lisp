; Auto-generated. Do not edit!


(cl:in-package my_robot_msgs-msg)


;//! \htmlinclude simple_actionGoal.msg.html

(cl:defclass <simple_actionGoal> (roslisp-msg-protocol:ros-message)
  ((signal_number
    :reader signal_number
    :initarg :signal_number
    :type cl:integer
    :initform 0)
   (wait_duration
    :reader wait_duration
    :initarg :wait_duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass simple_actionGoal (<simple_actionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simple_actionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simple_actionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-msg:<simple_actionGoal> is deprecated: use my_robot_msgs-msg:simple_actionGoal instead.")))

(cl:ensure-generic-function 'signal_number-val :lambda-list '(m))
(cl:defmethod signal_number-val ((m <simple_actionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-msg:signal_number-val is deprecated.  Use my_robot_msgs-msg:signal_number instead.")
  (signal_number m))

(cl:ensure-generic-function 'wait_duration-val :lambda-list '(m))
(cl:defmethod wait_duration-val ((m <simple_actionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-msg:wait_duration-val is deprecated.  Use my_robot_msgs-msg:wait_duration instead.")
  (wait_duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simple_actionGoal>) ostream)
  "Serializes a message object of type '<simple_actionGoal>"
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wait_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simple_actionGoal>) istream)
  "Deserializes a message object of type '<simple_actionGoal>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wait_duration) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simple_actionGoal>)))
  "Returns string type for a message object of type '<simple_actionGoal>"
  "my_robot_msgs/simple_actionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simple_actionGoal)))
  "Returns string type for a message object of type 'simple_actionGoal"
  "my_robot_msgs/simple_actionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simple_actionGoal>)))
  "Returns md5sum for a message object of type '<simple_actionGoal>"
  "f51a1293efda0df42a4f882527d6005e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simple_actionGoal)))
  "Returns md5sum for a message object of type 'simple_actionGoal"
  "f51a1293efda0df42a4f882527d6005e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simple_actionGoal>)))
  "Returns full string definition for message of type '<simple_actionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%int64 signal_number~%float64 wait_duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simple_actionGoal)))
  "Returns full string definition for message of type 'simple_actionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%int64 signal_number~%float64 wait_duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simple_actionGoal>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simple_actionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'simple_actionGoal
    (cl:cons ':signal_number (signal_number msg))
    (cl:cons ':wait_duration (wait_duration msg))
))
