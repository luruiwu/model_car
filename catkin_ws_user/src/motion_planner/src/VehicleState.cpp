/*
 * sample_nodelet_class2.cpp
 *
 *  Created on: 2016/09/18
 *      Author: cryborg21
 */
#include "VehicleState.h"
#include <nodelet/nodelet.h>
#include <pluginlib/class_list_macros.h>

namespace fub_motion_planner{
  VehicleState::VehicleState(){
    ROS_INFO("VehicleState Constructor");
  }

  VehicleState::~VehicleState(){
    ROS_INFO("VehicleState Destructor");
  }

  void VehicleState::onInit(){
      NODELET_INFO("VehicleState - %s", __FUNCTION__);
  }

  void VehicleState::setup(ros::NodeHandle & nh)
  {
      // TODO: increase odom queue to at least 32
      m_subscribe_odom         = nh.subscribe("/odom", 1, &VehicleState::odometryCallback, this, ros::TransportHints().tcpNoDelay());
      m_subscribe_route_planner  = nh.subscribe("/route_planner/sub_path", 1, &VehicleState::RoutePlannerCallback, this, ros::TransportHints().tcpNoDelay());
  }

  void VehicleState::odometryCallback(const nav_msgs::OdometryConstPtr & msg){
    m_ego_state_pose = msg->pose;
    m_current_speed_front_axle_center = (double) msg->twist.twist.linear.x;
    tf::pointMsgToTF(mEgoStatePose.pose.position, m_vehicle_position);
    m_last_odom_time_stamp_received = msg->header.stamp;
  }

  void VehicleState::RoutePlannerCallback(const nav_msgs::Path & msg){
    m_path = *msg;
  }

  double VehicleState::getVehicleYaw() const{
      return tf::getYaw(m_ego_state_pose.pose.orientation);// * radians;
  }

} // namespace sample_nodelet_ns

PLUGINLIB_EXPORT_CLASS(fub_motion_planner::VehicleState, nodelet::Nodelet)
