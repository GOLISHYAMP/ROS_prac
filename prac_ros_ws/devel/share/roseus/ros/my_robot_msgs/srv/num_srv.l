;; Auto-generated. Do not edit!


(when (boundp 'my_robot_msgs::num_srv)
  (if (not (find-package "MY_ROBOT_MSGS"))
    (make-package "MY_ROBOT_MSGS"))
  (shadow 'num_srv (find-package "MY_ROBOT_MSGS")))
(unless (find-package "MY_ROBOT_MSGS::NUM_SRV")
  (make-package "MY_ROBOT_MSGS::NUM_SRV"))
(unless (find-package "MY_ROBOT_MSGS::NUM_SRVREQUEST")
  (make-package "MY_ROBOT_MSGS::NUM_SRVREQUEST"))
(unless (find-package "MY_ROBOT_MSGS::NUM_SRVRESPONSE")
  (make-package "MY_ROBOT_MSGS::NUM_SRVRESPONSE"))

(in-package "ROS")





(defclass my_robot_msgs::num_srvRequest
  :super ros::object
  :slots (_num ))

(defmethod my_robot_msgs::num_srvRequest
  (:init
   (&key
    ((:num __num) 0)
    )
   (send-super :init)
   (setq _num (round __num))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:serialization-length
   ()
   (+
    ;; int64 _num
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num) (= (length (_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num . bv) 0) 0) s)
              (write-long (ash (elt (_num . bv) 1) -1) s))
             ((and (class _num) (= (length (_num . bv)) 1)) ;; big1
              (write-long (elt (_num . bv) 0) s)
              (write-long (if (>= _num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num s)(write-long (if (>= _num 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _num
#+(or :alpha :irix6 :x86_64)
      (setf _num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass my_robot_msgs::num_srvResponse
  :super ros::object
  :slots (_str ))

(defmethod my_robot_msgs::num_srvResponse
  (:init
   (&key
    ((:str __str) "")
    )
   (send-super :init)
   (setq _str (string __str))
   self)
  (:str
   (&optional __str)
   (if __str (setq _str __str)) _str)
  (:serialization-length
   ()
   (+
    ;; string _str
    4 (length _str)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _str
       (write-long (length _str) s) (princ _str s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass my_robot_msgs::num_srv
  :super ros::object
  :slots ())

(setf (get my_robot_msgs::num_srv :md5sum-) "fa0a9a2a723d413abaf66f55c0bec788")
(setf (get my_robot_msgs::num_srv :datatype-) "my_robot_msgs/num_srv")
(setf (get my_robot_msgs::num_srv :request) my_robot_msgs::num_srvRequest)
(setf (get my_robot_msgs::num_srv :response) my_robot_msgs::num_srvResponse)

(defmethod my_robot_msgs::num_srvRequest
  (:response () (instance my_robot_msgs::num_srvResponse :init)))

(setf (get my_robot_msgs::num_srvRequest :md5sum-) "fa0a9a2a723d413abaf66f55c0bec788")
(setf (get my_robot_msgs::num_srvRequest :datatype-) "my_robot_msgs/num_srvRequest")
(setf (get my_robot_msgs::num_srvRequest :definition-)
      "int64 num
---
string str

")

(setf (get my_robot_msgs::num_srvResponse :md5sum-) "fa0a9a2a723d413abaf66f55c0bec788")
(setf (get my_robot_msgs::num_srvResponse :datatype-) "my_robot_msgs/num_srvResponse")
(setf (get my_robot_msgs::num_srvResponse :definition-)
      "int64 num
---
string str

")



(provide :my_robot_msgs/num_srv "fa0a9a2a723d413abaf66f55c0bec788")


