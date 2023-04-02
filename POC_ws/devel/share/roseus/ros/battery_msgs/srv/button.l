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
    ((:on __on) 0)
    )
   (send-super :init)
   (setq _on (round __on))
   self)
  (:on
   (&optional __on)
   (if __on (setq _on __on)) _on)
  (:serialization-length
   ()
   (+
    ;; int64 _on
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _on
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _on (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _on) (= (length (_on . bv)) 2)) ;; bignum
              (write-long (ash (elt (_on . bv) 0) 0) s)
              (write-long (ash (elt (_on . bv) 1) -1) s))
             ((and (class _on) (= (length (_on . bv)) 1)) ;; big1
              (write-long (elt (_on . bv) 0) s)
              (write-long (if (>= _on 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _on s)(write-long (if (>= _on 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _on
#+(or :alpha :irix6 :x86_64)
      (setf _on (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _on (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass battery_msgs::buttonResponse
  :super ros::object
  :slots (_power ))

(defmethod battery_msgs::buttonResponse
  (:init
   (&key
    ((:power __power) 0)
    )
   (send-super :init)
   (setq _power (round __power))
   self)
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:serialization-length
   ()
   (+
    ;; int64 _power
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _power
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _power (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _power) (= (length (_power . bv)) 2)) ;; bignum
              (write-long (ash (elt (_power . bv) 0) 0) s)
              (write-long (ash (elt (_power . bv) 1) -1) s))
             ((and (class _power) (= (length (_power . bv)) 1)) ;; big1
              (write-long (elt (_power . bv) 0) s)
              (write-long (if (>= _power 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _power s)(write-long (if (>= _power 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _power
#+(or :alpha :irix6 :x86_64)
      (setf _power (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _power (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass battery_msgs::button
  :super ros::object
  :slots ())

(setf (get battery_msgs::button :md5sum-) "d768bdedadf64cabd792cf13b0c9dcc6")
(setf (get battery_msgs::button :datatype-) "battery_msgs/button")
(setf (get battery_msgs::button :request) battery_msgs::buttonRequest)
(setf (get battery_msgs::button :response) battery_msgs::buttonResponse)

(defmethod battery_msgs::buttonRequest
  (:response () (instance battery_msgs::buttonResponse :init)))

(setf (get battery_msgs::buttonRequest :md5sum-) "d768bdedadf64cabd792cf13b0c9dcc6")
(setf (get battery_msgs::buttonRequest :datatype-) "battery_msgs/buttonRequest")
(setf (get battery_msgs::buttonRequest :definition-)
      "int64 on
---
int64 power

")

(setf (get battery_msgs::buttonResponse :md5sum-) "d768bdedadf64cabd792cf13b0c9dcc6")
(setf (get battery_msgs::buttonResponse :datatype-) "battery_msgs/buttonResponse")
(setf (get battery_msgs::buttonResponse :definition-)
      "int64 on
---
int64 power

")



(provide :battery_msgs/button "d768bdedadf64cabd792cf13b0c9dcc6")


