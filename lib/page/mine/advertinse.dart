import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hook_up_rent/widgets/common_image.dart';

class Advertinse extends StatefulWidget {
  const Advertinse({ Key? key }) : super(key: key);

  @override
  State<Advertinse> createState() => _AdvertinseState();
}

class _AdvertinseState extends State<Advertinse> {
  int _currentPage = 0;
  Timer? _timer;
  PageController _controller = PageController(
    initialPage: 0
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {  //每5秒执行一次
      if(_currentPage <2) {
        _currentPage++;
      }else {
        _currentPage = 0;
      }
       //执行滚动
      _controller.animateToPage(_currentPage, duration: Duration(milliseconds:350), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
  @override
  Widget build(BuildContext context) {
    // final PageController pageViewController = PageController();
  return Container(
    width: double.infinity,
    // color: Colors.red,
    height: 100,
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: PageView(
      controller: _controller,
      children: [
        InkWell(onTap: () {},child: CommonImage("static/images/banner.jpg",height: 100,fit: BoxFit.fill,)),
        InkWell(onTap: () {},child: CommonImage("static/icons/default_avatar.png",height: 100,fit: BoxFit.fill,)),
        InkWell(onTap: () {},child: CommonImage("static/icons/search_localtion.png",height: 100,fit: BoxFit.fill,)),
      ],
    ),
  );
  }
}