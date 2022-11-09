import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/home/index_nav_item.dart';
import 'package:hook_up_rent/page/home/info_item.dart';
import 'package:hook_up_rent/page/home/recommond_item.dart';
import 'package:hook_up_rent/widgets/common_image.dart';
import 'package:hook_up_rent/widgets/common_search.dart';
import 'package:hook_up_rent/widgets/common_swiper.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _nav = Container(
      color: Color(0xffeeeeee),
      padding: EdgeInsets.symmetric(vertical: 7),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: navigatorItemList
              .map((e) => GestureDetector(
                    onTap: () {
                      e.onTap(context);
                    },
                    child: Column(
                      children: [
                        CommonImage(
                          e.imageUrl,
                          width: 50,
                          fit: BoxFit.fill,
                        ),
                        // Image.asset(e.imageUrl,width: 50,fit: BoxFit.fill,),
                        Text(e.tip,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ))
              .toList()),
    );

    Widget recommond = Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "房屋推荐",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              InkWell(
                  child: Text(
                    "更多",
                    style: TextStyle(fontSize: 16, color: Color(0xff999999)),
                  ),
                  onTap: () {
                    print("更多");
                  })
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              RecommondItem(
                  title1: "家住回龙观",
                  title2: "归属的感觉",
                  src: "static/images/home_index_recommend_1.png"),
              RecommondItem(
                  title1: "宜居四五环",
                  title2: "大都市生活",
                  src: "static/images/home_index_recommend_2.png"),
              RecommondItem(
                  title1: "喧嚣三里屯",
                  title2: "繁华的背后",
                  src: "static/images/home_index_recommend_3.png"),
              RecommondItem(
                  title1: "比邻十号线",
                  title2: "地铁心连心",
                  src: "static/images/home_index_recommend_4.png"),
            ],
          )
        ],
      ),
    );

    Widget info = Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text("最新资讯",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
          ),
          
          InfoItem(
            src: "static/images/banner.jpg",
            title: "置业选择|安贞西里 三室一厅 河间的古雅别院sfsfsfsf",
            from: "新华网",
            time: "两天前",
            onTap: (context) => {Navigator.of(context).pushNamed('login')},
          ),
          InfoItem(
              src: "static/images/banner.jpg",
              title: "置业选择|安贞西里 三室一厅 河间的古雅别院",
              from: "新华网",
              time: "两天前",
              onTap: (context) => {Navigator.of(context).pushNamed('login')})
        ],
      ),
    );
    return Scaffold(
        appBar: AppBar(
          title: CommonSearch(
            showLocation: true,
            showMap: true,
            onSearch: () {
              Navigator.of(context).pushNamed('search');
            },
          ),
          automaticallyImplyLeading:false,
          backgroundColor: Colors.white,
        ),
        body: Container(
          padding: EdgeInsets.all(2),
          color: Color(0xffdddddd),
          child: ListView(
            shrinkWrap: true,
            children: [CommonSwiper(), _nav, recommond, info],
          ),
        ));
  }
}
