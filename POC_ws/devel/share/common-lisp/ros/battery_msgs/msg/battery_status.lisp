; Auto-generated. Do not edit!


(cl:in-package battery_msgs-msg)


;//! \htmlinclude battery_status.msg.html

(cl:defclass <battery_status> (roslisp-msg-protocol:ros-message)
  ((battery_percentage
    :reader battery_percentage
    :initarg :battery_percentage
    :type cl:integer
    :initform 0)
   (battery_state
    :reader battery_state
    :initarg :battery_state
    :type cl:integer
    :initform 0))
)

(cl:defclass battery_status (<battery_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <battery_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'battery_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name battery_msgs-msg:<battery_status> is deprecated: use battery_msgs-msg:battery_status instead.")))

(cl:ensure-generic-function 'battery_percentage-val :lambda-list '(m))
(cl:defmethod battery_percentage-val ((m <battery_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader battery_msgs-msg:battery_percentage-val is deprecated.  Use battery_msgs-msg:battery_percentage instead.")
  (battery_percentage m))

(cl:ensure-generic-function 'battery_state-val :lambda-list '(m))
(cl:defmethod battery_state-val ((m <battery_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader battery_msgs-msg:battery_state-val is deprecated.  Use battery_msgs-msg:battery_state instead.")
  (battery_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <battery_status>) ostream)
  "Serializes a message object of type '<battery_status>"
  (cl:let* ((signed (cl:slot-value msg 'battery_percentage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'battery_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <battery_status>) istream)
  "Deserializes a message object of type '<battery_status>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_percentage) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_state) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<battery_status>)))
  "Returns string type for a message object of type '<battery_status>"
  "battery_msgs/battery_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'battery_status)))
  "Returns string type for a message object of type 'battery_status"
  "battery_msgs/battery_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<battery_status>)))
  "Returns md5sum for a message object of type '<battery_status>"
  "957b95659cace2f80a6937514c22929b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'battery_status)))
  "Returns md5sum for a message object of type 'battery_status"
  "957b95659cace2f80a6937514c22929b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<battery_status>)))
  "Returns full string definition for message of type '<battery_status>"
  (cl:format cl:nil "int64 battery_percentage~%int64 battery_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'battery_status)))
  "Returns full string definition for message of type 'battery_status"
  (cl:format cl:nil "int64 battery_percentage~%int64 battery_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <battery_status>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <battery_status>))
  "Converts a ROS message object to a list"
  (cl:list 'battery_status
    (cl:cons ':battery_percentage (battery_percentage msg))
    (cl:cons ':battery_state (battery_state msg))
))
