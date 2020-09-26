#!/usr/bin/env python

import rospy
from sensor_msgs.msg import JointState

rospy.init_node("fake_joint_pub")
p = rospy.Publisher('joint_states', JointState, queue_size=5)

msg = JointState()
msg.name = ["gripper_link_joint", "gripper_static_joint"]
msg.position = [0.0 for name in msg.name]
msg.velocity = [0.0 for name in msg.name]

rate = rospy.Rate(50)
while not rospy.is_shutdown():
    msg.header.stamp = rospy.Time.now()
    p.publish(msg)
    try:
        rate.sleep()
    except rospy.exceptions.ROSInterruptException:
        pass
