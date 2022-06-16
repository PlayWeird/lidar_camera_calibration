; Auto-generated. Do not edit!


(cl:in-package velo2cam_calibration-msg)


;//! \htmlinclude ClusterCentroids.msg.html

(cl:defclass <ClusterCentroids> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cluster_iterations
    :reader cluster_iterations
    :initarg :cluster_iterations
    :type cl:integer
    :initform 0)
   (total_iterations
    :reader total_iterations
    :initarg :total_iterations
    :type cl:integer
    :initform 0)
   (cloud
    :reader cloud
    :initarg :cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass ClusterCentroids (<ClusterCentroids>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClusterCentroids>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClusterCentroids)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name velo2cam_calibration-msg:<ClusterCentroids> is deprecated: use velo2cam_calibration-msg:ClusterCentroids instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ClusterCentroids>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader velo2cam_calibration-msg:header-val is deprecated.  Use velo2cam_calibration-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cluster_iterations-val :lambda-list '(m))
(cl:defmethod cluster_iterations-val ((m <ClusterCentroids>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader velo2cam_calibration-msg:cluster_iterations-val is deprecated.  Use velo2cam_calibration-msg:cluster_iterations instead.")
  (cluster_iterations m))

(cl:ensure-generic-function 'total_iterations-val :lambda-list '(m))
(cl:defmethod total_iterations-val ((m <ClusterCentroids>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader velo2cam_calibration-msg:total_iterations-val is deprecated.  Use velo2cam_calibration-msg:total_iterations instead.")
  (total_iterations m))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <ClusterCentroids>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader velo2cam_calibration-msg:cloud-val is deprecated.  Use velo2cam_calibration-msg:cloud instead.")
  (cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClusterCentroids>) ostream)
  "Serializes a message object of type '<ClusterCentroids>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cluster_iterations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cluster_iterations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cluster_iterations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cluster_iterations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_iterations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_iterations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_iterations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_iterations)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClusterCentroids>) istream)
  "Deserializes a message object of type '<ClusterCentroids>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cluster_iterations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cluster_iterations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cluster_iterations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cluster_iterations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_iterations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_iterations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_iterations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_iterations)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClusterCentroids>)))
  "Returns string type for a message object of type '<ClusterCentroids>"
  "velo2cam_calibration/ClusterCentroids")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClusterCentroids)))
  "Returns string type for a message object of type 'ClusterCentroids"
  "velo2cam_calibration/ClusterCentroids")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClusterCentroids>)))
  "Returns md5sum for a message object of type '<ClusterCentroids>"
  "9a2787f0622955b34b1f08821ba3ada1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClusterCentroids)))
  "Returns md5sum for a message object of type 'ClusterCentroids"
  "9a2787f0622955b34b1f08821ba3ada1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClusterCentroids>)))
  "Returns full string definition for message of type '<ClusterCentroids>"
  (cl:format cl:nil "std_msgs/Header header~%uint32 cluster_iterations~%uint32 total_iterations~%sensor_msgs/PointCloud2 cloud~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClusterCentroids)))
  "Returns full string definition for message of type 'ClusterCentroids"
  (cl:format cl:nil "std_msgs/Header header~%uint32 cluster_iterations~%uint32 total_iterations~%sensor_msgs/PointCloud2 cloud~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClusterCentroids>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClusterCentroids>))
  "Converts a ROS message object to a list"
  (cl:list 'ClusterCentroids
    (cl:cons ':header (header msg))
    (cl:cons ':cluster_iterations (cluster_iterations msg))
    (cl:cons ':total_iterations (total_iterations msg))
    (cl:cons ':cloud (cloud msg))
))
