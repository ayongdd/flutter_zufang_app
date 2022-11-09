import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/search/room_list_item.dart';
import 'package:hook_up_rent/page/search/tag.dart';
import 'package:hook_up_rent/widgets/common_image.dart';
import 'package:hook_up_rent/widgets/common_search.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({ Key? key }) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {


  @override
  Widget build(BuildContext context) {
    Color setColor(opa) {
      return Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), opa);
    }

    List<Widget> tagItem(data) {
      if(data.length > 0) {
        return data.map<Widget>((e) =>
       Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2), 
          color: setColor(0.2),
        ),
        padding: EdgeInsets.symmetric(horizontal: 3),
        margin: EdgeInsets.only(right: 2,bottom: 3,top:3),
        child:Text(e?? "",style: TextStyle(color: setColor(1.0),fontSize: 14),)
      )).toList();
      }else return [SizedBox()];
    
    }

    List<Widget> roomWidget = roomList.map((e) => 
    InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(context, e.id??"");
      },
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            CommonImage(e.imageUri??'',width: 150,height: 100,fit: BoxFit.fill,),
            Expanded(child: 
            Container(
              margin: EdgeInsets.only(left: 10),
              constraints: BoxConstraints( //设置最小宽度
                minHeight: 100 
              ),
              // height: 100,
              child: Column(
                mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(e.title ?? "",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Text(e.subTitle ?? "",maxLines: 1,style: TextStyle(fontSize: 16,color: Colors.black87),),
                // Wrap(children:tagItem(e.tags)), //方法1
                Wrap(children: e.tags!.map((e) => Tag(e)).toList(),), //方法2
                Text(e.price.toString()+'元/每月',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.amber[400]),)
              ],
            ),
            ))
          ],
        ),
      ),
    )).toList();

    return Scaffold(
      appBar: AppBar(title: 
      CommonSearch(showLocation:true,
      goBackCallback: () {
        Navigator.of(context).pushNamed('/');
      },
      onSearchSubmit: (value) {
        print("value:$value");
      },),
      backgroundColor: Colors.white,
      automaticallyImplyLeading:false //关闭默认关闭按钮
      ),
      body: ListView(
        children: roomWidget,
      ),
    );
  }
}