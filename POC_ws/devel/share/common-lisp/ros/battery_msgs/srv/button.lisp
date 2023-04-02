; Auto-generated. Do not edit!


(cl:in-package battery_msgs-srv)


;//! \htmlinclude button-request.msg.html

(cl:defclass <button-request> (roslisp-msg-protocol:ros-message)
  ((on
    :reader on
    :initarg :on
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass button-request (<button-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <button-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'button-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name battery_msgs-srv:<button-request> is deprecated: use battery_msgs-srv:button-request instead.")))

(cl:ensure-generic-function 'on-val :lambda-list '(m))
(cl:defmethod on-val ((m <button-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader battery_msgs-srv:on-val is deprecated.  Use battery_msgs-srv:on instead.")
  (on m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <button-request>) ostream)
  "Serializes a message object of type '<button-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'on) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <button-request>) istream)
  "Deserializes a message object of type '<button-request>"
    (cl:setf (cl:slot-value msg 'on) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<button-request>)))
  "Returns string type for a service object of type '<button-request>"
  "battery_msgs/buttonRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'button-request)))
  "Returns string type for a service object of type 'button-request"
  "battery_msgs/buttonRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<button-request>)))
  "Returns md5sum for a message object of type '<button-request>"
  "79e55607a903785e95704d7cf4e48e16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'button-request)))
  "Returns md5sum for a message object of type 'button-request"
  "79e55607a903785e95704d7cf4e48e16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<button-request>)))
  "Returns full string definition for message of type '<button-request>"
  (cl:format cl:nil "bool on~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'button-request)))
  "Returns full string definition for message of type 'button-request"
  (cl:format cl:nil "bool on~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <button-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <button-request>))
  "Converts a ROS message object to a list"
  (cl:list 'button-request
    (cl:cons ':on (on msg))
))
;//! \htmlinclude button-response.msg.html

(cl:defclass <button-response> (roslisp-msg-protocol:ros-message)
  ((power
    :reader power
    :initarg :power
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass button-response (<button-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <button-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'button-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name battery_msgs-srv:<button-response> is deprecated: use battery_msgs-srv:button-response instead.")))

(cl:ensure-generic-function 'power-val :lambda-list '(m))
(cl:defmethod power-val ((m <button-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader battery_msgs-srv:power-val is deprecated.  Use battery_msgs-srv:power instead.")
  (power m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <button-response>) ostream)
  "Serializes a message object of type '<button-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'power) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <button-response>) istream)
  "Deserializes a message object of type '<button-response>"
    (cl:setf (cl:slot-value msg 'power) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<button-response>)))
  "Returns string type for a service object of type '<button-response>"
  "battery_msgs/buttonResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'button-response)))
  "Returns string type for a service object of type 'button-response"
  "battery_msgs/buttonResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<button-response>)))
  "Returns md5sum for a message object of type '<button-response>"
  "79e55607a903785e95704d7cf4e48e16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'button-response)))
  "Returns md5sum for a message object of type 'button-response"
  "79e55607a903785e95704d7cf4e48e16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<button-response>)))
  "Returns full string definition for message of type '<button-response>"
  (cl:format cl:nil "bool power~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'button-response)))
  "Returns full string definition for message of type 'button-response"
  (cl:format cl:nil "bool power~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <button-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <button-response>))
  "Converts a ROS message object to a list"
  (cl:list 'button-response
    (cl:cons ':power (power msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'button)))
  'button-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'button)))
  'button-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'button)))
  "Returns string type for a service object of type '<button>"
  "battery_msgs/button")