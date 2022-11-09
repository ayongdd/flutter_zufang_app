import 'package:flutter/material.dart';

//声明数据类，组装数据
class IndexNavItem {
   final String imageUrl;
   final String tip;
   final Function(BuildContext context) onTap;

   IndexNavItem(this.imageUrl,this.tip,this.onTap);
}


List<IndexNavItem>  navigatorItemList = [
   IndexNavItem("static/images/home_index_navigator_map.png","整租",(BuildContext context)=>{
     Navigator.of(context).pushReplacementNamed('login')
   }),

  IndexNavItem("static/images/home_index_navigator_rent.png","合租",(BuildContext context)=>{
     Navigator.of(context).pushReplacementNamed('login')
   }),

  IndexNavItem("static/images/home_index_navigator_share.png","地图找房",(BuildContext context)=>{
     Navigator.of(context).pushReplacementNamed('login')
   }),

  IndexNavItem("static/images/home_index_navigator_total.png","去出租",(BuildContext context)=>{
     Navigator.of(context).pushReplacementNamed('login')
   }),
];