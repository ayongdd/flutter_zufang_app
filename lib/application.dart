import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/login.dart';
// import 'package:hook_up_rent/page/home/index.dart';
import 'package:hook_up_rent/routers.dart';

class Application extends StatelessWidget {
  const Application({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routers.configureRoutes(router);
    return MaterialApp(
      // home:LoginPage(),
      theme: ThemeData(
        primaryColor: Colors.green
      ),
      initialRoute: Routers.login,
      onGenerateRoute: router.generator,
    );
  }
}