import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/home/index.dart';
import 'package:hook_up_rent/page/login.dart';
import 'package:hook_up_rent/page/not_found.dart';
import 'package:hook_up_rent/page/register.dart';
import 'package:hook_up_rent/page/room_detail/index.dart';
import 'package:hook_up_rent/page/room_manager/index.dart';
import 'package:hook_up_rent/page/room_manager/room_add.dart';
import 'package:hook_up_rent/page/search/index.dart';
import 'package:hook_up_rent/page/setting.dart';

class Routers{
  //定义路由名称
  static String home = '/';
  static String login = '/login';
  static String roomDetail = '/room/:roomId';
  static String register = '/register';
  static String search = '/search';
  static String setting = '/setting';
  static String roomManager = '/roomManager';
  static String roomAdd = '/roomAdd';

  // static final router = FluroRouter();

  //定义路由处理函数
  static Handler _homeHander = Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return HomePage();
  });
   
   static Handler _loginHander = Handler(handlerFunc: (BuildContext? context,Map<String,dynamic> params) {
    return LoginPage();
   });
    
   static Handler _notFoundler = Handler(handlerFunc: (BuildContext? context,Map<String,dynamic> params){
     return NotFoundpPage();
   });
 
   static Handler _roomDetail = Handler(handlerFunc: (BuildContext? context,Map<String,dynamic> params){
     return RoomDetailPage(roomId: params['roomId'][0]);
   });
   
    static Handler _registerHandler = Handler(handlerFunc: (BuildContext? context,Map<String,dynamic> params){
     return RegisterPage();
   });

  static Handler _searchHandler = Handler(handlerFunc: (BuildContext? context,Map<String,dynamic> params){
     return SearchPage();
   });

  static Handler _settingHandler = Handler(handlerFunc: (BuildContext? context,Map<String,dynamic> params){
     return SettingPage();
   });

   static  Handler _roomManagerHandler = Handler(handlerFunc: (BuildContext? context,Map<String,dynamic> params){
     return RoomManagerPage();
   });

   static  Handler _roomAddHandler = Handler(handlerFunc: (BuildContext? context,Map<String,dynamic> params){
     return RoomAddPage();
   });
   //编写函数 configureRoutes 关联路由名称和处理函数
   static configureRoutes(FluroRouter router) {
    router.define(home,handler:_homeHander);
    router.define(login,handler:_loginHander);
    router.define(roomDetail,handler:_roomDetail);
    router.define(register,handler:_registerHandler);
    router.define(search,handler:_searchHandler);
    router.define(setting, handler: _settingHandler);
    router.define(roomManager, handler: _roomManagerHandler);
    router.define(roomAdd, handler: _roomAddHandler);
    router.notFoundHandler = _notFoundler;
   }
}