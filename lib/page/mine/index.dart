import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/home/info_item.dart';
import 'package:hook_up_rent/page/mine/advertinse.dart';
import 'package:hook_up_rent/page/mine/mine_nav_item.dart';
import 'package:hook_up_rent/widgets/common_image.dart';

class MinePage extends StatelessWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "我的",
        ),
        backgroundColor: Colors.green,
        actions: [
          InkWell(
            child: Icon(
              Icons.settings,
              size: 20,
            ),
            onTap: () {
              print("设置");
              Navigator.of(context).pushNamed('setting');
            },
          ),
          Padding(padding: EdgeInsets.only(right: 10))
        ],
      ),
      body: ListView(
         shrinkWrap: true, //hasSize
        children: [
          topContent(context),
          SizedBox(height: 20,),
          middleContent(context),
          SizedBox(height: 10,),
          Advertinse(),  //pageView设置定时器
          // Padding(padding: EdgeInsets.only(bottom: 20)),
          Padding(padding: EdgeInsets.only(top:20,left: 10),child: Text("最新资讯",style:TextStyle(fontSize: 18,fontWeight: FontWeight.w700,))),
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
      ),
    );
  }
}
Widget middleContent(BuildContext context) {
  return GridView.count(  
      shrinkWrap: true, //hasSize
      primary: false,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 20,
      crossAxisCount: 3,
      childAspectRatio:2, //宽高比
      children: navList.map((e) => InkWell(
        onTap:() {
          print(e.nav);
          Navigator.pushNamed(context, e.nav);
        },
        // color: Colors.red,
        child: Column(
          children: [
            CommonImage(e.icon,width: 40,height: 40,fit: BoxFit.fill,),
            Text(e.label,style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      )).toList(),
    );
}

Widget topContent(BuildContext context) {
  return Container(
    color: Colors.green,
    padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 50,
          height: 50,
          child: CircleAvatar( //头像
            // child: Image.asset("static/icons/default_avatar.png"),
            backgroundImage: AssetImage("static/icons/default_avatar.png"),
          ),
        ),
        Padding(padding: EdgeInsets.only(right: 10)),
        Expanded( 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("登录/注册",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "登录后可以体验更多",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
      ],
    ),
  );
}
