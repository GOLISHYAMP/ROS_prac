;; Auto-generated. Do not edit!


(when (boundp 'my_robot_msgs::signal)
  (if (not (find-package "MY_ROBOT_MSGS"))
    (make-package "MY_ROBOT_MSGS"))
  (shadow 'signal (find-package "MY_ROBOT_MSGS")))
(unless (find-package "MY_ROBOT_MSGS::SIGNAL")
  (make-package "MY_ROBOT_MSGS::SIGNAL"))

(in-package "ROS")
;;//! \htmlinclude signal.msg.html


(defclass my_robot_msgs::signal
  :super ros::object
  :slots (_signal_color _signal_number ))

(defmethod my_robot_msgs::signal
  (:init
   (&key
    ((:signal_color __signal_color) "")
    ((:signal_number __signal_number) 0)
    )
   (send-super :init)
   (setq _signal_color (string __signal_color))
   (setq _signal_number (round __signal_number))
   self)
  (:signal_color
   (&optional __signal_color)
   (if __signal_color (setq _signal_color __signal_color)) _signal_color)
  (:signal_number
   (&optional __signal_number)
   (if __signal_number (setq _signal_number __signal_number)) _signal_number)
  (:serialization-length
   ()
   (+
    ;; string _signal_color
    4 (length _signal_color)
    ;; int64 _signal_number
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _signal_color
       (write-long (length _signal_color) s) (princ _signal_color s)
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
   ;; string _signal_color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _signal_color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get my_robot_msgs::signal :md5sum-) "2b51f0318452418723219cbc46255f5c")
(setf (get my_robot_msgs::signal :datatype-) "my_robot_msgs/signal")
(setf (get my_robot_msgs::signal :definition-)
      "string signal_color
int64 signal_number

")



(provide :my_robot_msgs/signal "2b51f0318452418723219cbc46255f5c")


