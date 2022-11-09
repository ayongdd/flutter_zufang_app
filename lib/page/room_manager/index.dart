import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/home/info_item.dart';
import 'package:hook_up_rent/widgets/common_floatingButton.dart';

class RoomManagerPage extends StatefulWidget {
  const RoomManagerPage({Key? key}) : super(key: key);

  @override
  State<RoomManagerPage> createState() => _RoomManagerPageState();
}

class _RoomManagerPageState extends State<RoomManagerPage>
    with TickerProviderStateMixin {
  final List<Tab> tabs = [Tab(text: "已租"), Tab(text: "空置")];
  late TabController _tabController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    // _tabController = TabController(length: tabs.length, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CommonFloatingButton("发布房源1",() {
          Navigator.of(context).pushNamed("/roomAdd");
        }),
        appBar: AppBar(
            backgroundColor: Colors.green,
            centerTitle: true,
            title: Text('房屋管理'),
            bottom: TabBar(
              tabs: tabs,
              labelStyle: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600
              ),
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w200
              ),
              // onTap: setInt,
            )),
        body: TabBarView(
          children: [
            ListView(
              shrinkWrap: true, //hasSize
              children: [
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
            Center(
              child: Text('222222222222'),
            )
          ],
        ),
      ),
    );
  }
}
