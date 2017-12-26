#include "ros/ros.h"
#include "basic_test/basic.h"

int main(int argc, char *argv[])
{
    ros::init(argc,argv,"service_client");
    ros::NodeHandle nh;
    ros::ServiceClient client;
    client = nh.serviceClient<basic_test::basic>("service_test");
    basic_test::basic srv;
    srv.request.A = 10;
    srv.request.B = 20;
    srv.request.C = 30;
    if(client.call(srv))//这句话直接调用服务，并且等待回应
    {
        ROS_INFO("sum of the three number is %d",srv.response.sum);
    }
    else
    {
        ROS_ERROR("Failed to call service");
    }

    return 0;
}