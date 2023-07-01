;; Auto-generated. Do not edit!


(when (boundp 'my_robot_msgs::robot)
  (if (not (find-package "MY_ROBOT_MSGS"))
    (make-package "MY_ROBOT_MSGS"))
  (shadow 'robot (find-package "MY_ROBOT_MSGS")))
(unless (find-package "MY_ROBOT_MSGS::ROBOT")
  (make-package "MY_ROBOT_MSGS::ROBOT"))

(in-package "ROS")
;;//! \htmlinclude robot.msg.html


(defclass my_robot_msgs::robot
  :super ros::object
  :slots (_signal_number _message ))

(defmethod my_robot_msgs::robot
  (:init
   (&key
    ((:signal_number __signal_number) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _signal_number (round __signal_number))
   (setq _message (string __message))
   self)
  (:signal_number
   (&optional __signal_number)
   (if __signal_number (setq _signal_number __signal_number)) _signal_number)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int64 _signal_number
    8
    ;; string _message
    4 (length _message)
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
     ;; string _message
       (write-long (length _message) s) (princ _message s)
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
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get my_robot_msgs::robot :md5sum-) "ab597da5ada892a08fde55bf769237dd")
(setf (get my_robot_msgs::robot :datatype-) "my_robot_msgs/robot")
(setf (get my_robot_msgs::robot :definition-)
      "int64 signal_number
string message

")



(provide :my_robot_msgs/robot "ab597da5ada892a08fde55bf769237dd")


