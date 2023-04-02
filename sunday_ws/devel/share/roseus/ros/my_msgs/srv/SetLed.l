;; Auto-generated. Do not edit!


(when (boundp 'my_msgs::SetLed)
  (if (not (find-package "MY_MSGS"))
    (make-package "MY_MSGS"))
  (shadow 'SetLed (find-package "MY_MSGS")))
(unless (find-package "MY_MSGS::SETLED")
  (make-package "MY_MSGS::SETLED"))
(unless (find-package "MY_MSGS::SETLEDREQUEST")
  (make-package "MY_MSGS::SETLEDREQUEST"))
(unless (find-package "MY_MSGS::SETLEDRESPONSE")
  (make-package "MY_MSGS::SETLEDRESPONSE"))

(in-package "ROS")





(defclass my_msgs::SetLedRequest
  :super ros::object
  :slots (_lednum _state ))

(defmethod my_msgs::SetLedRequest
  (:init
   (&key
    ((:lednum __lednum) 0)
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _lednum (round __lednum))
   (setq _state __state)
   self)
  (:lednum
   (&optional __lednum)
   (if __lednum (setq _lednum __lednum)) _lednum)
  (:state
   (&optional (__state :null))
   (if (not (eq __state :null)) (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int64 _lednum
    8
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _lednum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _lednum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _lednum) (= (length (_lednum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_lednum . bv) 0) 0) s)
              (write-long (ash (elt (_lednum . bv) 1) -1) s))
             ((and (class _lednum) (= (length (_lednum . bv)) 1)) ;; big1
              (write-long (elt (_lednum . bv) 0) s)
              (write-long (if (>= _lednum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _lednum s)(write-long (if (>= _lednum 0) 0 #xffffffff) s)))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _lednum
#+(or :alpha :irix6 :x86_64)
      (setf _lednum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _lednum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_msgs::SetLedResponse
  :super ros::object
  :slots (_success ))

(defmethod my_msgs::SetLedResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_msgs::SetLed
  :super ros::object
  :slots ())

(setf (get my_msgs::SetLed :md5sum-) "e8496c88347754a203f587528efbd669")
(setf (get my_msgs::SetLed :datatype-) "my_msgs/SetLed")
(setf (get my_msgs::SetLed :request) my_msgs::SetLedRequest)
(setf (get my_msgs::SetLed :response) my_msgs::SetLedResponse)

(defmethod my_msgs::SetLedRequest
  (:response () (instance my_msgs::SetLedResponse :init)))

(setf (get my_msgs::SetLedRequest :md5sum-) "e8496c88347754a203f587528efbd669")
(setf (get my_msgs::SetLedRequest :datatype-) "my_msgs/SetLedRequest")
(setf (get my_msgs::SetLedRequest :definition-)
      "int64 lednum
bool state
---
bool success

")

(setf (get my_msgs::SetLedResponse :md5sum-) "e8496c88347754a203f587528efbd669")
(setf (get my_msgs::SetLedResponse :datatype-) "my_msgs/SetLedResponse")
(setf (get my_msgs::SetLedResponse :definition-)
      "int64 lednum
bool state
---
bool success

")



(provide :my_msgs/SetLed "e8496c88347754a203f587528efbd669")


