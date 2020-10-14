search_mode=OPTIMIZE_MAX_JOINT
srdf_filename=turtlebot_arm.srdf
robot_name_in_srdf=turtlebot_arm
moveit_config_pkg=turtlebot_arm_moveit_config
robot_name=turtlebot_arm
planning_group_name=arm
ikfast_plugin_pkg=turtlebot_arm_ikfast_plugin
base_link_name=arm_base_link
eef_link_name=gripper_link
ikfast_output_path=/home/jorge/catkin_ws/turtlebot/src/turtlebot_arm/turtlebot_arm_ikfast_plugin/src/turtlebot_arm_arm_ikfast_solver.cpp

rosrun moveit_kinematics create_ikfast_moveit_plugin.py\
  --search_mode=$search_mode\
  --srdf_filename=$srdf_filename\
  --robot_name_in_srdf=$robot_name_in_srdf\
  --moveit_config_pkg=$moveit_config_pkg\
  $robot_name\
  $planning_group_name\
  $ikfast_plugin_pkg\
  $base_link_name\
  $eef_link_name\
  $ikfast_output_path
