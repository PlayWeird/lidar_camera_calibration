
(cl:in-package :asdf)

(defsystem "velo2cam_calibration-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ClusterCentroids" :depends-on ("_package_ClusterCentroids"))
    (:file "_package_ClusterCentroids" :depends-on ("_package"))
  ))