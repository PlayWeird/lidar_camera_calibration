;; Auto-generated. Do not edit!


(when (boundp 'velo2cam_calibration::ClusterCentroids)
  (if (not (find-package "VELO2CAM_CALIBRATION"))
    (make-package "VELO2CAM_CALIBRATION"))
  (shadow 'ClusterCentroids (find-package "VELO2CAM_CALIBRATION")))
(unless (find-package "VELO2CAM_CALIBRATION::CLUSTERCENTROIDS")
  (make-package "VELO2CAM_CALIBRATION::CLUSTERCENTROIDS"))

(in-package "ROS")
;;//! \htmlinclude ClusterCentroids.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass velo2cam_calibration::ClusterCentroids
  :super ros::object
  :slots (_header _cluster_iterations _total_iterations _cloud ))

(defmethod velo2cam_calibration::ClusterCentroids
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cluster_iterations __cluster_iterations) 0)
    ((:total_iterations __total_iterations) 0)
    ((:cloud __cloud) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _cluster_iterations (round __cluster_iterations))
   (setq _total_iterations (round __total_iterations))
   (setq _cloud __cloud)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cluster_iterations
   (&optional __cluster_iterations)
   (if __cluster_iterations (setq _cluster_iterations __cluster_iterations)) _cluster_iterations)
  (:total_iterations
   (&optional __total_iterations)
   (if __total_iterations (setq _total_iterations __total_iterations)) _total_iterations)
  (:cloud
   (&rest __cloud)
   (if (keywordp (car __cloud))
       (send* _cloud __cloud)
     (progn
       (if __cloud (setq _cloud (car __cloud)))
       _cloud)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _cluster_iterations
    4
    ;; uint32 _total_iterations
    4
    ;; sensor_msgs/PointCloud2 _cloud
    (send _cloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _cluster_iterations
       (write-long _cluster_iterations s)
     ;; uint32 _total_iterations
       (write-long _total_iterations s)
     ;; sensor_msgs/PointCloud2 _cloud
       (send _cloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _cluster_iterations
     (setq _cluster_iterations (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _total_iterations
     (setq _total_iterations (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/PointCloud2 _cloud
     (send _cloud :deserialize buf ptr-) (incf ptr- (send _cloud :serialization-length))
   ;;
   self)
  )

(setf (get velo2cam_calibration::ClusterCentroids :md5sum-) "9a2787f0622955b34b1f08821ba3ada1")
(setf (get velo2cam_calibration::ClusterCentroids :datatype-) "velo2cam_calibration/ClusterCentroids")
(setf (get velo2cam_calibration::ClusterCentroids :definition-)
      "std_msgs/Header header
uint32 cluster_iterations
uint32 total_iterations
sensor_msgs/PointCloud2 cloud

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

")



(provide :velo2cam_calibration/ClusterCentroids "9a2787f0622955b34b1f08821ba3ada1")


