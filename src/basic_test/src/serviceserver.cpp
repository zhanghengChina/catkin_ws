#include "ros/ros.h"
#include "basic_test/basic.h"


bool add (basic_test::basic::Request& req,basic_test::basic::Response& res)
{
    res.sum = req.A+req.B+req.C;
    ROS_INFO("sending back the sum of three numbers");
    return true;
}

int main(int argc, char *argv[])
{
    ros::init(argc,argv,"serviveserver");
    ros::NodeHandle nh;
    ros::ServiceServer server;
    server = nh.advertiseService("service_test",add);
    ROS_INFO("Ready to add three numbers");
    ros::spin();//回调函数被执行的循环
    return 0;
}