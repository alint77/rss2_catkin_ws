;; Auto-generated. Do not edit!


(when (boundp 'rss2_msgsrv_pkg::srv_turtlebot_move)
  (if (not (find-package "RSS2_MSGSRV_PKG"))
    (make-package "RSS2_MSGSRV_PKG"))
  (shadow 'srv_turtlebot_move (find-package "RSS2_MSGSRV_PKG")))
(unless (find-package "RSS2_MSGSRV_PKG::SRV_TURTLEBOT_MOVE")
  (make-package "RSS2_MSGSRV_PKG::SRV_TURTLEBOT_MOVE"))
(unless (find-package "RSS2_MSGSRV_PKG::SRV_TURTLEBOT_MOVEREQUEST")
  (make-package "RSS2_MSGSRV_PKG::SRV_TURTLEBOT_MOVEREQUEST"))
(unless (find-package "RSS2_MSGSRV_PKG::SRV_TURTLEBOT_MOVERESPONSE")
  (make-package "RSS2_MSGSRV_PKG::SRV_TURTLEBOT_MOVERESPONSE"))

(in-package "ROS")





(defclass rss2_msgsrv_pkg::srv_turtlebot_moveRequest
  :super ros::object
  :slots (_duration ))

(defmethod rss2_msgsrv_pkg::srv_turtlebot_moveRequest
  (:init
   (&key
    ((:duration __duration) 0)
    )
   (send-super :init)
   (setq _duration (round __duration))
   self)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; int32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _duration
       (write-long _duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rss2_msgsrv_pkg::srv_turtlebot_moveResponse
  :super ros::object
  :slots (_success ))

(defmethod rss2_msgsrv_pkg::srv_turtlebot_moveResponse
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

(defclass rss2_msgsrv_pkg::srv_turtlebot_move
  :super ros::object
  :slots ())

(setf (get rss2_msgsrv_pkg::srv_turtlebot_move :md5sum-) "b92c952a9248b3029cefe45f52f6ffde")
(setf (get rss2_msgsrv_pkg::srv_turtlebot_move :datatype-) "rss2_msgsrv_pkg/srv_turtlebot_move")
(setf (get rss2_msgsrv_pkg::srv_turtlebot_move :request) rss2_msgsrv_pkg::srv_turtlebot_moveRequest)
(setf (get rss2_msgsrv_pkg::srv_turtlebot_move :response) rss2_msgsrv_pkg::srv_turtlebot_moveResponse)

(defmethod rss2_msgsrv_pkg::srv_turtlebot_moveRequest
  (:response () (instance rss2_msgsrv_pkg::srv_turtlebot_moveResponse :init)))

(setf (get rss2_msgsrv_pkg::srv_turtlebot_moveRequest :md5sum-) "b92c952a9248b3029cefe45f52f6ffde")
(setf (get rss2_msgsrv_pkg::srv_turtlebot_moveRequest :datatype-) "rss2_msgsrv_pkg/srv_turtlebot_moveRequest")
(setf (get rss2_msgsrv_pkg::srv_turtlebot_moveRequest :definition-)
      "int32 duration #Request - time tb3 moves
---
bool success #Response
")

(setf (get rss2_msgsrv_pkg::srv_turtlebot_moveResponse :md5sum-) "b92c952a9248b3029cefe45f52f6ffde")
(setf (get rss2_msgsrv_pkg::srv_turtlebot_moveResponse :datatype-) "rss2_msgsrv_pkg/srv_turtlebot_moveResponse")
(setf (get rss2_msgsrv_pkg::srv_turtlebot_moveResponse :definition-)
      "int32 duration #Request - time tb3 moves
---
bool success #Response
")



(provide :rss2_msgsrv_pkg/srv_turtlebot_move "b92c952a9248b3029cefe45f52f6ffde")


