import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/home/info_item.dart';


class NewsPage extends StatefulWidget {
  const NewsPage({ Key? key }) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('资讯'),),
      body:ListView(
        children: [
          Padding(padding: EdgeInsets.only(bottom: 10)),
           InfoItem(src:"static/images/banner.jpg", title: "置业选择|安贞西里 三室一厅 河间的古雅别院sfsfsfsf", from: "新华网", time: "两天前",onTap: (context) => {
            Navigator.of(context).pushNamed('login')
          },),
           InfoItem(src:"static/images/banner.jpg", title: "置业选择|安贞西里 三室一厅 河间的古雅别院sfsfsfsf", from: "新华网", time: "两天前",onTap: (context) => {
            Navigator.of(context).pushNamed('login')
          },),
           InfoItem(src:"static/images/banner.jpg", title: "置业选择|安贞西里 三室一厅 河间的古雅别院sfsfsfsf", from: "新华网", time: "两天前",onTap: (context) => {
            Navigator.of(context).pushNamed('login')
          },),
           InfoItem(src:"static/images/banner.jpg", title: "置业选择|安贞西里 三室一厅 河间的古雅别院sfsfsfsf", from: "新华网", time: "两天前",onTap: (context) => {
            Navigator.of(context).pushNamed('login')
          },),
           InfoItem(src:"static/images/banner.jpg", title: "置业选择|安贞西里 三室一厅 河间的古雅别院sfsfsfsf", from: "新华网", time: "两天前",onTap: (context) => {
            Navigator.of(context).pushNamed('login')
          },),
           InfoItem(src:"static/images/banner.jpg", title: "置业选择|安贞西里 三室一厅 河间的古雅别院sfsfsfsf", from: "新华网", time: "两天前",onTap: (context) => {
            Navigator.of(context).pushNamed('login')
          },),
           InfoItem(src:"static/images/banner.jpg", title: "置业选择|安贞西里 三室一厅 河间的古雅别院sfsfsfsf", from: "新华网", time: "两天前",onTap: (context) => {
            Navigator.of(context).pushNamed('login')
          },),
        ],
      )
    );
  }
}