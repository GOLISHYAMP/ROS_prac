;; Auto-generated. Do not edit!


(when (boundp 'battery_msgs::button)
  (if (not (find-package "BATTERY_MSGS"))
    (make-package "BATTERY_MSGS"))
  (shadow 'button (find-package "BATTERY_MSGS")))
(unless (find-package "BATTERY_MSGS::BUTTON")
  (make-package "BATTERY_MSGS::BUTTON"))
(unless (find-package "BATTERY_MSGS::BUTTONREQUEST")
  (make-package "BATTERY_MSGS::BUTTONREQUEST"))
(unless (find-package "BATTERY_MSGS::BUTTONRESPONSE")
  (make-package "BATTERY_MSGS::BUTTONRESPONSE"))

(in-package "ROS")





(defclass battery_msgs::buttonRequest
  :super ros::object
  :slots (_on ))

(defmethod battery_msgs::buttonRequest
  (:init
   (&key
    ((:on __on) nil)
    )
   (send-super :init)
   (setq _on __on)
   self)
  (:on
   (&optional (__on :null))
   (if (not (eq __on :null)) (setq _on __on)) _on)
  (:serialization-length
   ()
   (+
    ;; bool _on
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _on
       (if _on (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _on
     (setq _on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass battery_msgs::buttonResponse
  :super ros::object
  :slots (_power ))

(defmethod battery_msgs::buttonResponse
  (:init
   (&key
    ((:power __power) nil)
    )
   (send-super :init)
   (setq _power __power)
   self)
  (:power
   (&optional (__power :null))
   (if (not (eq __power :null)) (setq _power __power)) _power)
  (:serialization-length
   ()
   (+
    ;; bool _power
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _power
       (if _power (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _power
     (setq _power (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass battery_msgs::button
  :super ros::object
  :slots ())

(setf (get battery_msgs::button :md5sum-) "79e55607a903785e95704d7cf4e48e16")
(setf (get battery_msgs::button :datatype-) "battery_msgs/button")
(setf (get battery_msgs::button :request) battery_msgs::buttonRequest)
(setf (get battery_msgs::button :response) battery_msgs::buttonResponse)

(defmethod battery_msgs::buttonRequest
  (:response () (instance battery_msgs::buttonResponse :init)))

(setf (get battery_msgs::buttonRequest :md5sum-) "79e55607a903785e95704d7cf4e48e16")
(setf (get battery_msgs::buttonRequest :datatype-) "battery_msgs/buttonRequest")
(setf (get battery_msgs::buttonRequest :definition-)
      "bool on
---
bool power

")

(setf (get battery_msgs::buttonResponse :md5sum-) "79e55607a903785e95704d7cf4e48e16")
(setf (get battery_msgs::buttonResponse :datatype-) "battery_msgs/buttonResponse")
(setf (get battery_msgs::buttonResponse :definition-)
      "bool on
---
bool power

")



(provide :battery_msgs/button "79e55607a903785e95704d7cf4e48e16")


