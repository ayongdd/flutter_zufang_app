import 'package:flutter/material.dart';

class MineNavItem {
  final String icon;
  final String label;
  final String nav;
  // final Function(BuildContext context) onTap;

  MineNavItem({required this.icon,required this.label,required this.nav});  
}

List<MineNavItem> navList = [
  MineNavItem(icon:"static/images/home_profile_contract.png",label: "看房记录",nav:"/"),
    MineNavItem(icon:"static/images/home_profile_favor.png",label: "我的收藏",nav:"/"),
    MineNavItem(icon:"static/images/home_profile_house.png",label: "房屋管理",nav:"/roomManager"),
    MineNavItem(icon:"static/images/home_profile_id.png",label: "身份认证",nav:"/"),
    MineNavItem(icon:"static/images/home_profile_message.png",label: "联系我们",nav:"/"),
   MineNavItem(icon:"static/images/home_profile_order.png",label: "我的订单",nav:"/"),
   MineNavItem(icon:"static/images/home_profile_record.png",label: "电子合同",nav:"/"),
   MineNavItem(icon:"static/images/home_profile_wallet.png",label: "钱包",nav:"/"),
];