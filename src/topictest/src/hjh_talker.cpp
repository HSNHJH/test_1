#include "ros/ros.h"
#include "std_msgs/String.h" //普通文本类型的消息
#include <sstream>
#include <iostream>   
#include <string>     
#include "topictest/person.h"
#define _CRT_SECURE_NO_WARNINGS //VS中必须定义,否则报错
#include<ctime>
#include<stdio.h>
// 时间转换
std::string get_timenow()
{
    std::string str2;
    time_t nowtime;
	time(&nowtime); //获取1970年1月1日0点0分0秒到现在经过的秒数
	tm* p = localtime(&nowtime); //将秒数转换为本地时间,年从1900算起,需要+1900,月为0-11,所以要+1
	str2= std::to_string(p->tm_year + 1900)+"年" +std::to_string(p->tm_mon + 1)+"月"+std::to_string(p->tm_mday)+"日"+ std::to_string(p->tm_hour)+"时"+std::to_string(p->tm_min)+"分"+std::to_string(p->tm_sec)+"秒";
    // str2=std::to_string(p->tm_year + 1900) + std::to_string(p->tm_mon + 1);
    return str2;
}

int main(int argc, char *argv[])
{   
    //设置编码
    ROS_INFO("发送的消息:%s",setlocale(LC_ALL,""));

    //2.初始化 ROS 节点:命名(唯一)
    // 参数1和参数2 后期为节点传值会使用
    // 参数3 是节点名称，是一个标识符，需要保证运行后，在 ROS 网络拓扑中唯一
    ros::init(argc,argv,"talker");
    //3.实例化 ROS 句柄
    ros::NodeHandle nh;//该类封装了 ROS 中的一些常用功能

    //4.实例化 发布者 对象
    //泛型: 发布的消息类型
    //参数1: 要发布到的话题
    //参数2: 队列中最大保存的消息数，超出此阀值时，先进的先销毁(时间早的先销毁)
    ros::Publisher pub = nh.advertise<topictest::person>("chatter",10);

    //5.组织被发布的数据，并编写逻辑发布数据
    //数据(动态组织)
    topictest::person msg;

    std::string str1="温塘小学2005级一年级二班hjh！ ";

    msg.name = "温塘小学2005级一年级二班hjh！ ";;//消息前缀
    msg.height =39;
    msg.age =6;
    ros::Time count = ros::Time::now() ; //消息计数器

    //逻辑(一秒10次)
    ros::Rate r(1);

    //节点不死
    while (ros::ok())
    {
        //使用 stringstream 拼接字符串与编号
        count = ros::Time::now() ;
        std::stringstream ss;
        ss << str1 << get_timenow().c_str();
        msg.name = ss.str();
        //发布消息
        pub.publish(msg);
        //加入调试，打印发送的消息
        ROS_INFO("发送的消息:%s",msg.name.c_str());

        //根据前面制定的发送贫频率自动休眠 休眠时间 = 1/频率；
        r.sleep();
        // count++;//循环结束前，让 count 自增
        //暂无应用
        ros::spinOnce();
    }


    return 0;
}