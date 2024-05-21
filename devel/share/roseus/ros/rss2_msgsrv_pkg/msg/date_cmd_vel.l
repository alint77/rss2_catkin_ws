;; Auto-generated. Do not edit!


(when (boundp 'rss2_msgsrv_pkg::date_cmd_vel)
  (if (not (find-package "RSS2_MSGSRV_PKG"))
    (make-package "RSS2_MSGSRV_PKG"))
  (shadow 'date_cmd_vel (find-package "RSS2_MSGSRV_PKG")))
(unless (find-package "RSS2_MSGSRV_PKG::DATE_CMD_VEL")
  (make-package "RSS2_MSGSRV_PKG::DATE_CMD_VEL"))

(in-package "ROS")
;;//! \htmlinclude date_cmd_vel.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rss2_msgsrv_pkg::date_cmd_vel
  :super ros::object
  :slots (_alint_date _alint_cmd_vel ))

(defmethod rss2_msgsrv_pkg::date_cmd_vel
  (:init
   (&key
    ((:alint_date __alint_date) "")
    ((:alint_cmd_vel __alint_cmd_vel) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _alint_date (string __alint_date))
   (setq _alint_cmd_vel __alint_cmd_vel)
   self)
  (:alint_date
   (&optional __alint_date)
   (if __alint_date (setq _alint_date __alint_date)) _alint_date)
  (:alint_cmd_vel
   (&rest __alint_cmd_vel)
   (if (keywordp (car __alint_cmd_vel))
       (send* _alint_cmd_vel __alint_cmd_vel)
     (progn
       (if __alint_cmd_vel (setq _alint_cmd_vel (car __alint_cmd_vel)))
       _alint_cmd_vel)))
  (:serialization-length
   ()
   (+
    ;; string _alint_date
    4 (length _alint_date)
    ;; geometry_msgs/Twist _alint_cmd_vel
    (send _alint_cmd_vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _alint_date
       (write-long (length _alint_date) s) (princ _alint_date s)
     ;; geometry_msgs/Twist _alint_cmd_vel
       (send _alint_cmd_vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _alint_date
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alint_date (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Twist _alint_cmd_vel
     (send _alint_cmd_vel :deserialize buf ptr-) (incf ptr- (send _alint_cmd_vel :serialization-length))
   ;;
   self)
  )

(setf (get rss2_msgsrv_pkg::date_cmd_vel :md5sum-) "229588a82b2404ec2a567ecac3edc51c")
(setf (get rss2_msgsrv_pkg::date_cmd_vel :datatype-) "rss2_msgsrv_pkg/date_cmd_vel")
(setf (get rss2_msgsrv_pkg::date_cmd_vel :definition-)
      "string alint_date
geometry_msgs/Twist alint_cmd_vel
================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :rss2_msgsrv_pkg/date_cmd_vel "229588a82b2404ec2a567ecac3edc51c")


