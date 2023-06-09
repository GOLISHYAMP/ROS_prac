; Auto-generated. Do not edit!


(cl:in-package my_robot_msgs-msg)


;//! \htmlinclude simple_signalGoal.msg.html

(cl:defclass <simple_signalGoal> (roslisp-msg-protocol:ros-message)
  ((wait_duration
    :reader wait_duration
    :initarg :wait_duration
    :type cl:float
    :initform 0.0)
   (signal_number
    :reader signal_number
    :initarg :signal_number
    :type cl:integer
    :initform 0))
)

(cl:defclass simple_signalGoal (<simple_signalGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simple_signalGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simple_signalGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-msg:<simple_signalGoal> is deprecated: use my_robot_msgs-msg:simple_signalGoal instead.")))

(cl:ensure-generic-function 'wait_duration-val :lambda-list '(m))
(cl:defmethod wait_duration-val ((m <simple_signalGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-msg:wait_duration-val is deprecated.  Use my_robot_msgs-msg:wait_duration instead.")
  (wait_duration m))

(cl:ensure-generic-function 'signal_number-val :lambda-list '(m))
(cl:defmethod signal_number-val ((m <simple_signalGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-msg:signal_number-val is deprecated.  Use my_robot_msgs-msg:signal_number instead.")
  (signal_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simple_signalGoal>) ostream)
  "Serializes a message object of type '<simple_signalGoal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wait_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simple_signalGoal>) istream)
  "Deserializes a message object of type '<simple_signalGoal>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simple_signalGoal>)))
  "Returns string type for a message object of type '<simple_signalGoal>"
  "my_robot_msgs/simple_signalGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simple_signalGoal)))
  "Returns string type for a message object of type 'simple_signalGoal"
  "my_robot_msgs/simple_signalGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simple_signalGoal>)))
  "Returns md5sum for a message object of type '<simple_signalGoal>"
  "a0a9e9d680822ae4c2e7427383594954")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simple_signalGoal)))
  "Returns md5sum for a message object of type 'simple_signalGoal"
  "a0a9e9d680822ae4c2e7427383594954")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simple_signalGoal>)))
  "Returns full string definition for message of type '<simple_signalGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%float64 wait_duration~%int64 signal_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simple_signalGoal)))
  "Returns full string definition for message of type 'simple_signalGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%float64 wait_duration~%int64 signal_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simple_signalGoal>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simple_signalGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'simple_signalGoal
    (cl:cons ':wait_duration (wait_duration msg))
    (cl:cons ':signal_number (signal_number msg))
))
