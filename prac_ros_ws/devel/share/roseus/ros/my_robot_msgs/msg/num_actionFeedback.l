;; Auto-generated. Do not edit!


(when (boundp 'my_robot_msgs::num_actionFeedback)
  (if (not (find-package "MY_ROBOT_MSGS"))
    (make-package "MY_ROBOT_MSGS"))
  (shadow 'num_actionFeedback (find-package "MY_ROBOT_MSGS")))
(unless (find-package "MY_ROBOT_MSGS::NUM_ACTIONFEEDBACK")
  (make-package "MY_ROBOT_MSGS::NUM_ACTIONFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude num_actionFeedback.msg.html


(defclass my_robot_msgs::num_actionFeedback
  :super ros::object
  :slots (_percentage_done ))

(defmethod my_robot_msgs::num_actionFeedback
  (:init
   (&key
    ((:percentage_done __percentage_done) 0.0)
    )
   (send-super :init)
   (setq _percentage_done (float __percentage_done))
   self)
  (:percentage_done
   (&optional __percentage_done)
   (if __percentage_done (setq _percentage_done __percentage_done)) _percentage_done)
  (:serialization-length
   ()
   (+
    ;; float64 _percentage_done
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _percentage_done
       (sys::poke _percentage_done (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _percentage_done
     (setq _percentage_done (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get my_robot_msgs::num_actionFeedback :md5sum-) "e4296ebcdecd59873bb1d94db9895591")
(setf (get my_robot_msgs::num_actionFeedback :datatype-) "my_robot_msgs/num_actionFeedback")
(setf (get my_robot_msgs::num_actionFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback
float64 percentage_done


")



(provide :my_robot_msgs/num_actionFeedback "e4296ebcdecd59873bb1d94db9895591")


