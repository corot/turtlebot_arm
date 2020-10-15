TurtleBot Arm IKFast61 plugin
=============================

## Updated for Melodic

Created following [IKFast Kinematics Solver Noetic tutorial](https://ros-planning.github.io/moveit_tutorials/doc/ikfast/ikfast_tutorial.html).

    roscd turtlebot_arm_description/urdf
    rosrun moveit_kinematics auto_create_ikfast_moveit_plugin.sh --iktype TranslationDirection5D --name turtlebot_arm --pkg turtlebot_arm_ikfast_plugin `pwd`/turtlebot_arm.urdf arm arm_base_link gripper_link

This runs OpenRAVE in a docker container, so no need to install it. But if you want to do so, this [openrave-installation](https://github.com/crigroup/openrave-installation) work fine.
Troubleshooting: Look at [this issue](https://github.com/crigroup/openrave-installation/issues/17) if you cannot visualize your robot with openrave. 
