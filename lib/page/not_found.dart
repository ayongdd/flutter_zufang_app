import 'package:flutter/material.dart';

class NotFoundpPage extends StatelessWidget {
  const NotFoundpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('not found')),
      body:Center(child: Text("您访问的页面不存在"))
    );
  }
}