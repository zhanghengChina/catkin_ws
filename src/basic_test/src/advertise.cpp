#include "ros/ros.h"
#include "std_msgs/String.h"
int main(int argc, char *argv[])
{
    ros::init(argc,argv,"topic_advertise");
    ros::NodeHandle nh;
    ros::Publisher pub;
    pub = nh.advertise<std_msgs::String>("message",1000);
    sleep(1.0);//给发布端去master注册的时间，不然可能会出现前几个发的送的数据不能被接受
    ros::Rate loop_rate(10);
    while(nh.ok())//这里面尽量不要用while(1)，因为用ros::ok()的话当按下Ctrl+C 的时候可以停止。
    {
        std_msgs::String msg;
        msg.data = "hello";
        pub.publish(msg);
        ROS_INFO("%s",msg.data.c_str());
        ros::spinOnce();//如果有一个订阅者出现，ROS会更新并读取所有主题
        loop_rate.sleep();

    }
    return 0;
}