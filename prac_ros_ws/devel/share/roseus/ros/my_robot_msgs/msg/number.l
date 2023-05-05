;; Auto-generated. Do not edit!


(when (boundp 'my_robot_msgs::number)
  (if (not (find-package "MY_ROBOT_MSGS"))
    (make-package "MY_ROBOT_MSGS"))
  (shadow 'number (find-package "MY_ROBOT_MSGS")))
(unless (find-package "MY_ROBOT_MSGS::NUMBER")
  (make-package "MY_ROBOT_MSGS::NUMBER"))

(in-package "ROS")
;;//! \htmlinclude number.msg.html


(defclass my_robot_msgs::number
  :super ros::object
  :slots ())

(defmethod my_robot_msgs::number
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get my_robot_msgs::number :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get my_robot_msgs::number :datatype-) "my_robot_msgs/number")
(setf (get my_robot_msgs::number :definition-)
      "
")



(provide :my_robot_msgs/number "d41d8cd98f00b204e9800998ecf8427e")


