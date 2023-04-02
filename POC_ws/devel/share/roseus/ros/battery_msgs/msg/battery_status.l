;; Auto-generated. Do not edit!


(when (boundp 'battery_msgs::battery_status)
  (if (not (find-package "BATTERY_MSGS"))
    (make-package "BATTERY_MSGS"))
  (shadow 'battery_status (find-package "BATTERY_MSGS")))
(unless (find-package "BATTERY_MSGS::BATTERY_STATUS")
  (make-package "BATTERY_MSGS::BATTERY_STATUS"))

(in-package "ROS")
;;//! \htmlinclude battery_status.msg.html


(defclass battery_msgs::battery_status
  :super ros::object
  :slots (_battery_percentage _battery_state ))

(defmethod battery_msgs::battery_status
  (:init
   (&key
    ((:battery_percentage __battery_percentage) 0)
    ((:battery_state __battery_state) 0)
    )
   (send-super :init)
   (setq _battery_percentage (round __battery_percentage))
   (setq _battery_state (round __battery_state))
   self)
  (:battery_percentage
   (&optional __battery_percentage)
   (if __battery_percentage (setq _battery_percentage __battery_percentage)) _battery_percentage)
  (:battery_state
   (&optional __battery_state)
   (if __battery_state (setq _battery_state __battery_state)) _battery_state)
  (:serialization-length
   ()
   (+
    ;; int64 _battery_percentage
    8
    ;; int64 _battery_state
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _battery_percentage
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _battery_percentage (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _battery_percentage) (= (length (_battery_percentage . bv)) 2)) ;; bignum
              (write-long (ash (elt (_battery_percentage . bv) 0) 0) s)
              (write-long (ash (elt (_battery_percentage . bv) 1) -1) s))
             ((and (class _battery_percentage) (= (length (_battery_percentage . bv)) 1)) ;; big1
              (write-long (elt (_battery_percentage . bv) 0) s)
              (write-long (if (>= _battery_percentage 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _battery_percentage s)(write-long (if (>= _battery_percentage 0) 0 #xffffffff) s)))
     ;; int64 _battery_state
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _battery_state (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _battery_state) (= (length (_battery_state . bv)) 2)) ;; bignum
              (write-long (ash (elt (_battery_state . bv) 0) 0) s)
              (write-long (ash (elt (_battery_state . bv) 1) -1) s))
             ((and (class _battery_state) (= (length (_battery_state . bv)) 1)) ;; big1
              (write-long (elt (_battery_state . bv) 0) s)
              (write-long (if (>= _battery_state 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _battery_state s)(write-long (if (>= _battery_state 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _battery_percentage
#+(or :alpha :irix6 :x86_64)
      (setf _battery_percentage (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _battery_percentage (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _battery_state
#+(or :alpha :irix6 :x86_64)
      (setf _battery_state (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _battery_state (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get battery_msgs::battery_status :md5sum-) "957b95659cace2f80a6937514c22929b")
(setf (get battery_msgs::battery_status :datatype-) "battery_msgs/battery_status")
(setf (get battery_msgs::battery_status :definition-)
      "int64 battery_percentage
int64 battery_state

")



(provide :battery_msgs/battery_status "957b95659cace2f80a6937514c22929b")


