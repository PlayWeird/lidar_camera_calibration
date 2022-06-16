# lidar_camera_calibration
# Run Calibration From Sensors
```
roslaunch velodyne_pointcloud VLS128_points.launch 
roslaunch pointgrey_camera_driver camera.launch
roslaunch velo2cam_calibration mono_pattern.launch camera_name:=/camera image_topic:=image_color frame_name:=camera
roslaunch velo2cam_calibration lidar_pattern.launch cloud_topic:=/velodyne_points
rosrun rqt_reconfigure rqt_reconfigure
roslaunch velo2cam_calibration registration.launch sensor1_type:=mono sensor2_type:=lidar
```
# Run Calibration From Bag
```
roscore
rosparam set use_sim_time true
rosbag play -l --clock /home/gaetano/Documents/calib_003_2022-06-15-11-11-18.bag
roslaunch velo2cam_calibration mono_pattern.launch camera_name:=/camera image_topic:=image_color frame_name:=camera
roslaunch velo2cam_calibration lidar_pattern.launch cloud_topic:=/velodyne_points
rosrun rqt_reconfigure rqt_reconfigure
roslaunch velo2cam_calibration registration.launch sensor1_type:=mono sensor2_type:=lidar
```
# Run Test From Bag
```
roscore
rosparam set use_sim_time true
rosbag play -l --clock /home/gaetano/Documents/calib_003_2022-06-15-11-11-18.bag
roslaunch velo2cam_calibration calibrated_tf_2022-06-15-10-52-39.launch
ROS_NAMESPACE=camera rosrun image_proc image_proc
```
