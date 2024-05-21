
(cl:in-package :asdf)

(defsystem "rss2_msgsrv_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "srv_turtlebot_move" :depends-on ("_package_srv_turtlebot_move"))
    (:file "_package_srv_turtlebot_move" :depends-on ("_package"))
    (:file "turtlebot_move_square" :depends-on ("_package_turtlebot_move_square"))
    (:file "_package_turtlebot_move_square" :depends-on ("_package"))
  ))