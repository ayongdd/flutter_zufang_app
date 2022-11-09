import 'package:flutter/material.dart';
import 'package:hook_up_rent/routers.dart';

class PageContent extends StatelessWidget {
  final String name;
  
  const PageContent({ Key? key, required this.name }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("当前页面：$name"),),
      body: ListView(
        children: [
          TextButton(onPressed: () {
            Navigator.pushNamed(context, Routers.home);
          }, child: Text(Routers.home)),
          TextButton(onPressed: () {
            Navigator.pushNamed(context, Routers.login);
          }, child: Text(Routers.login)),
          TextButton(onPressed: () {
            Navigator.pushNamed(context, "/s");
          }, child: Text('notFound')),
          TextButton(onPressed: () {
            Navigator.pushNamed(context, '/room/222');
          }, child: Text("房屋详情页，id:2222"))
        ],
      ),
    );
  }
}