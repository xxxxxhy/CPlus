#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

int main(int args, char **argv)
{
    ros::init(args,argv,"velocity_publisher");

    ros::NodeHandle n;

    ros::Publisher turtleVelPub = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel",10);

    ros::Rate loop_rate(10);

    int count = 0;
    while(ros::ok())
    {
        geometry_msgs::Twist velMsg;
        velMsg.linear.x = 0.5;
        velMsg.angular.z = 0.2;

        turtleVelPub.publish(velMsg);
        ROS_INFO("Publish turtle velocity command [%0.2f m/s, %0.2f rad/s]",velMsg.linear.x,velMsg.angular.z);

        loop_rate.sleep();
    }
    return 0;
}