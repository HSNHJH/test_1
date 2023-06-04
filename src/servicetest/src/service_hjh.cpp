#include "ros/ros.h"
#include "servicetest/hjh.h"
#include "std_msgs/String.h" //普通文本类型的消息
bool doReq(servicetest::hjh::Request& req,
          servicetest::hjh::Response& resp)
{
    std::string num1 = req.name.c_str();
    std::string num2 = req.school.c_str();

    ROS_INFO("服务器接收到的请求数据为:num1 = %s, num2 = %s",num1.c_str(), num2.c_str());

    // //逻辑处理
    // if (num1 < 0 || num2 < 0)
    // {
    //     ROS_ERROR("提交的数据异常:数据不可以为负数");
    //     return false;
    // }

    //如果没有异常，那么相加并将结果赋值给 resp
    resp.memory = num1 + num2;
    return true;


}

int main(int argc,char *argv[])
{
    setlocale(LC_ALL,"");
    // 2.初始化 ROS 节点
    ros::init(argc,argv,"AddInts_Server");
    // 3.创建 ROS 句柄
    ros::NodeHandle nh;
    // 4.创建 服务 对象
    ros::ServiceServer server = nh.advertiseService("AddInts",doReq);
    ROS_INFO("服务已经启动....");
    //     5.回调函数处理请求并产生响应
    //     6.由于请求有多个，需要调用 ros::spin()
    ros::spin();
    return 0;
}