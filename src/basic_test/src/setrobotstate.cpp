#include "ros/ros.h"
#include "sensor_msgs/JointState.h"


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "setrobotstate");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<sensor_msgs::JointState>("/joint_states",1);
    ros::Rate loop_rate(10);
    while (ros::ok())
    {
        sensor_msgs::JointState jointstate;
        jointstate.header.stamp = ros::Time::now();
        jointstate.name.resize(2);
        jointstate.position.resize(2);
        jointstate.name[0] = "shoulder_pan_joint";
        jointstate.name[1] = "shoulder_lift_joint";
        jointstate.position[0] = 1;
        jointstate.position[1] = 0.5;
        pub.publish(jointstate);
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}