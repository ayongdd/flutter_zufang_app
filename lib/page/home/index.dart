import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/home/tab_index.dart';
import 'package:hook_up_rent/page/mine/index.dart';
import 'package:hook_up_rent/page/news/index.dart';
import 'package:hook_up_rent/page/search/index.dart';
// import 'package:hook_up_rent/widgets/page_content.dart';


List<Widget> tabViewList = [
  TabIndex(),
  SearchPage(),
  NewsPage(),
  MinePage(),
];

List<BottomNavigationBarItem> barItemList = [ 
  BottomNavigationBarItem(icon: Icon(Icons.home),label: "首页"),
  BottomNavigationBarItem(icon: Icon(Icons.search),label: "搜索"),
  BottomNavigationBarItem(icon: Icon(Icons.info),label: "资讯"),
  BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "我的"),
];

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title:Text("首页")),
      body:tabViewList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex:_selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}