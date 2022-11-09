import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String title;
  final Color? color;
  final Color? backgroundColor;

  Tag.origin(this.title, {Key? key,this.color = Colors.black12, this.backgroundColor = Colors.black87}): super(key: key);

  factory Tag(String title) { //工厂函数
    switch(title) {
      // "近地铁","集中供暖","新上","随时看房","大户型","物业好"
      case '近地铁':
         return Tag.origin(title,color: Colors.blue,backgroundColor: Colors.blue[50],);
      case '集中供暖':
         return Tag.origin(title,color: Colors.red,backgroundColor: Colors.red[50],);
      case '新上':
         return Tag.origin(title,color: Colors.amber,backgroundColor: Colors.amber[50],);
      case '随时看房':
         return Tag.origin(title,color: Colors.cyan,backgroundColor: Colors.cyan[50],);
      case '大户型':
         return Tag.origin(title,color: Colors.yellow,backgroundColor: Colors.yellow[50],);
      case '物业好':
         return Tag.origin(title,color: Colors.green,backgroundColor: Colors.green[50],);
      default:
        return Tag.origin(title,color: Colors.blue,backgroundColor: Colors.blue[50],); 
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2), 
          color: backgroundColor,
        ),
        padding: EdgeInsets.symmetric(horizontal: 3),
        margin: EdgeInsets.only(right: 2,bottom: 3,top:3),
        child:Text(title,style: TextStyle(color: color,fontSize: 14),
      )
    );
  }
}

