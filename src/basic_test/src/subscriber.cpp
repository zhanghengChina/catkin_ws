#include "ros/ros.h"
#include "std_msgs/String.h"


void CallBack(const std_msgs::String::ConstPtr& msg)
{
    ROS_INFO("the content of the msg is %s",msg->data.c_str());//最后的c_str()是string类型的成员函数，不用太在意
}

int main(int argc, char *argv[])
{
    ros::init(argc,argv,"topic_subscriber");
    ros::NodeHandle nh;
    ros::Subscriber sub;
    sub = nh.subscribe("message",1000,CallBack);
    ROS_INFO("i am the first");
    ros::spin();//是节点开始读取主题和在消息到达的时候，回调函数被调用的循环。其实很多时候不仅仅是灰调函数，更多的是不让程序停止。
    return 0;
}