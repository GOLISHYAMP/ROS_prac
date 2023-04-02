; Auto-generated. Do not edit!


(cl:in-package battery_msgs-srv)


;//! \htmlinclude compute_battery-request.msg.html

(cl:defclass <compute_battery-request> (roslisp-msg-protocol:ros-message)
  ((percentage
    :reader percentage
    :initarg :percentage
    :type cl:integer
    :initform 0))
)

(cl:defclass compute_battery-request (<compute_battery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <compute_battery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'compute_battery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name battery_msgs-srv:<compute_battery-request> is deprecated: use battery_msgs-srv:compute_battery-request instead.")))

(cl:ensure-generic-function 'percentage-val :lambda-list '(m))
(cl:defmethod percentage-val ((m <compute_battery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader battery_msgs-srv:percentage-val is deprecated.  Use battery_msgs-srv:percentage instead.")
  (percentage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <compute_battery-request>) ostream)
  "Serializes a message object of type '<compute_battery-request>"
  (cl:let* ((signed (cl:slot-value msg 'percentage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <compute_battery-request>) istream)
  "Deserializes a message object of type '<compute_battery-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'percentage) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<compute_battery-request>)))
  "Returns string type for a service object of type '<compute_battery-request>"
  "battery_msgs/compute_batteryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'compute_battery-request)))
  "Returns string type for a service object of type 'compute_battery-request"
  "battery_msgs/compute_batteryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<compute_battery-request>)))
  "Returns md5sum for a message object of type '<compute_battery-request>"
  "0a0786e9c7f1dae93c6b1b4c8555c6e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'compute_battery-request)))
  "Returns md5sum for a message object of type 'compute_battery-request"
  "0a0786e9c7f1dae93c6b1b4c8555c6e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<compute_battery-request>)))
  "Returns full string definition for message of type '<compute_battery-request>"
  (cl:format cl:nil "int64 percentage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'compute_battery-request)))
  "Returns full string definition for message of type 'compute_battery-request"
  (cl:format cl:nil "int64 percentage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <compute_battery-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <compute_battery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'compute_battery-request
    (cl:cons ':percentage (percentage msg))
))
;//! \htmlinclude compute_battery-response.msg.html

(cl:defclass <compute_battery-response> (roslisp-msg-protocol:ros-message)
  ((set
    :reader set
    :initarg :set
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass compute_battery-response (<compute_battery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <compute_battery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'compute_battery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name battery_msgs-srv:<compute_battery-response> is deprecated: use battery_msgs-srv:compute_battery-response instead.")))

(cl:ensure-generic-function 'set-val :lambda-list '(m))
(cl:defmethod set-val ((m <compute_battery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader battery_msgs-srv:set-val is deprecated.  Use battery_msgs-srv:set instead.")
  (set m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <compute_battery-response>) ostream)
  "Serializes a message object of type '<compute_battery-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <compute_battery-response>) istream)
  "Deserializes a message object of type '<compute_battery-response>"
    (cl:setf (cl:slot-value msg 'set) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<compute_battery-response>)))
  "Returns string type for a service object of type '<compute_battery-response>"
  "battery_msgs/compute_batteryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'compute_battery-response)))
  "Returns string type for a service object of type 'compute_battery-response"
  "battery_msgs/compute_batteryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<compute_battery-response>)))
  "Returns md5sum for a message object of type '<compute_battery-response>"
  "0a0786e9c7f1dae93c6b1b4c8555c6e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'compute_battery-response)))
  "Returns md5sum for a message object of type 'compute_battery-response"
  "0a0786e9c7f1dae93c6b1b4c8555c6e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<compute_battery-response>)))
  "Returns full string definition for message of type '<compute_battery-response>"
  (cl:format cl:nil "bool set~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'compute_battery-response)))
  "Returns full string definition for message of type 'compute_battery-response"
  (cl:format cl:nil "bool set~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <compute_battery-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <compute_battery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'compute_battery-response
    (cl:cons ':set (set msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'compute_battery)))
  'compute_battery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'compute_battery)))
  'compute_battery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'compute_battery)))
  "Returns string type for a service object of type '<compute_battery>"
  "battery_msgs/compute_battery")