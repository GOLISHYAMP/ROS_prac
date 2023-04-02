;; Auto-generated. Do not edit!


(when (boundp 'battery_msgs::compute_battery)
  (if (not (find-package "BATTERY_MSGS"))
    (make-package "BATTERY_MSGS"))
  (shadow 'compute_battery (find-package "BATTERY_MSGS")))
(unless (find-package "BATTERY_MSGS::COMPUTE_BATTERY")
  (make-package "BATTERY_MSGS::COMPUTE_BATTERY"))
(unless (find-package "BATTERY_MSGS::COMPUTE_BATTERYREQUEST")
  (make-package "BATTERY_MSGS::COMPUTE_BATTERYREQUEST"))
(unless (find-package "BATTERY_MSGS::COMPUTE_BATTERYRESPONSE")
  (make-package "BATTERY_MSGS::COMPUTE_BATTERYRESPONSE"))

(in-package "ROS")





(defclass battery_msgs::compute_batteryRequest
  :super ros::object
  :slots (_percentage ))

(defmethod battery_msgs::compute_batteryRequest
  (:init
   (&key
    ((:percentage __percentage) 0)
    )
   (send-super :init)
   (setq _percentage (round __percentage))
   self)
  (:percentage
   (&optional __percentage)
   (if __percentage (setq _percentage __percentage)) _percentage)
  (:serialization-length
   ()
   (+
    ;; int64 _percentage
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _percentage
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _percentage (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _percentage) (= (length (_percentage . bv)) 2)) ;; bignum
              (write-long (ash (elt (_percentage . bv) 0) 0) s)
              (write-long (ash (elt (_percentage . bv) 1) -1) s))
             ((and (class _percentage) (= (length (_percentage . bv)) 1)) ;; big1
              (write-long (elt (_percentage . bv) 0) s)
              (write-long (if (>= _percentage 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _percentage s)(write-long (if (>= _percentage 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _percentage
#+(or :alpha :irix6 :x86_64)
      (setf _percentage (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _percentage (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass battery_msgs::compute_batteryResponse
  :super ros::object
  :slots (_set ))

(defmethod battery_msgs::compute_batteryResponse
  (:init
   (&key
    ((:set __set) nil)
    )
   (send-super :init)
   (setq _set __set)
   self)
  (:set
   (&optional (__set :null))
   (if (not (eq __set :null)) (setq _set __set)) _set)
  (:serialization-length
   ()
   (+
    ;; bool _set
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _set
       (if _set (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _set
     (setq _set (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass battery_msgs::compute_battery
  :super ros::object
  :slots ())

(setf (get battery_msgs::compute_battery :md5sum-) "0a0786e9c7f1dae93c6b1b4c8555c6e5")
(setf (get battery_msgs::compute_battery :datatype-) "battery_msgs/compute_battery")
(setf (get battery_msgs::compute_battery :request) battery_msgs::compute_batteryRequest)
(setf (get battery_msgs::compute_battery :response) battery_msgs::compute_batteryResponse)

(defmethod battery_msgs::compute_batteryRequest
  (:response () (instance battery_msgs::compute_batteryResponse :init)))

(setf (get battery_msgs::compute_batteryRequest :md5sum-) "0a0786e9c7f1dae93c6b1b4c8555c6e5")
(setf (get battery_msgs::compute_batteryRequest :datatype-) "battery_msgs/compute_batteryRequest")
(setf (get battery_msgs::compute_batteryRequest :definition-)
      "int64 percentage
---
bool set

")

(setf (get battery_msgs::compute_batteryResponse :md5sum-) "0a0786e9c7f1dae93c6b1b4c8555c6e5")
(setf (get battery_msgs::compute_batteryResponse :datatype-) "battery_msgs/compute_batteryResponse")
(setf (get battery_msgs::compute_batteryResponse :definition-)
      "int64 percentage
---
bool set

")



(provide :battery_msgs/compute_battery "0a0786e9c7f1dae93c6b1b4c8555c6e5")


