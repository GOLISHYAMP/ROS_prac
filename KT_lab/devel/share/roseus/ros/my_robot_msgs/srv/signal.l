;; Auto-generated. Do not edit!


(when (boundp 'my_robot_msgs::signal)
  (if (not (find-package "MY_ROBOT_MSGS"))
    (make-package "MY_ROBOT_MSGS"))
  (shadow 'signal (find-package "MY_ROBOT_MSGS")))
(unless (find-package "MY_ROBOT_MSGS::SIGNAL")
  (make-package "MY_ROBOT_MSGS::SIGNAL"))
(unless (find-package "MY_ROBOT_MSGS::SIGNALREQUEST")
  (make-package "MY_ROBOT_MSGS::SIGNALREQUEST"))
(unless (find-package "MY_ROBOT_MSGS::SIGNALRESPONSE")
  (make-package "MY_ROBOT_MSGS::SIGNALRESPONSE"))

(in-package "ROS")





(defclass my_robot_msgs::signalRequest
  :super ros::object
  :slots (_signal_number ))

(defmethod my_robot_msgs::signalRequest
  (:init
   (&key
    ((:signal_number __signal_number) 0)
    )
   (send-super :init)
   (setq _signal_number (round __signal_number))
   self)
  (:signal_number
   (&optional __signal_number)
   (if __signal_number (setq _signal_number __signal_number)) _signal_number)
  (:serialization-length
   ()
   (+
    ;; int64 _signal_number
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _signal_number
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _signal_number (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _signal_number) (= (length (_signal_number . bv)) 2)) ;; bignum
              (write-long (ash (elt (_signal_number . bv) 0) 0) s)
              (write-long (ash (elt (_signal_number . bv) 1) -1) s))
             ((and (class _signal_number) (= (length (_signal_number . bv)) 1)) ;; big1
              (write-long (elt (_signal_number . bv) 0) s)
              (write-long (if (>= _signal_number 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _signal_number s)(write-long (if (>= _signal_number 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _signal_number
#+(or :alpha :irix6 :x86_64)
      (setf _signal_number (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _signal_number (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass my_robot_msgs::signalResponse
  :super ros::object
  :slots (_color _message ))

(defmethod my_robot_msgs::signalResponse
  (:init
   (&key
    ((:color __color) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _color (string __color))
   (setq _message (string __message))
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _color
    4 (length _color)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass my_robot_msgs::signal
  :super ros::object
  :slots ())

(setf (get my_robot_msgs::signal :md5sum-) "f69cbcdad8e751aa0b4f314d7baa16e8")
(setf (get my_robot_msgs::signal :datatype-) "my_robot_msgs/signal")
(setf (get my_robot_msgs::signal :request) my_robot_msgs::signalRequest)
(setf (get my_robot_msgs::signal :response) my_robot_msgs::signalResponse)

(defmethod my_robot_msgs::signalRequest
  (:response () (instance my_robot_msgs::signalResponse :init)))

(setf (get my_robot_msgs::signalRequest :md5sum-) "f69cbcdad8e751aa0b4f314d7baa16e8")
(setf (get my_robot_msgs::signalRequest :datatype-) "my_robot_msgs/signalRequest")
(setf (get my_robot_msgs::signalRequest :definition-)
      "int64 signal_number
---
string color
string message
")

(setf (get my_robot_msgs::signalResponse :md5sum-) "f69cbcdad8e751aa0b4f314d7baa16e8")
(setf (get my_robot_msgs::signalResponse :datatype-) "my_robot_msgs/signalResponse")
(setf (get my_robot_msgs::signalResponse :definition-)
      "int64 signal_number
---
string color
string message
")



(provide :my_robot_msgs/signal "f69cbcdad8e751aa0b4f314d7baa16e8")


