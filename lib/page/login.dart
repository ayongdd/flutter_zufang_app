import 'package:flutter/material.dart';
import 'package:hook_up_rent/routers.dart';
import 'package:hook_up_rent/widgets/page_content.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final _userController; 
  late final _passwordController; 
  bool checkPwd = true;
  IconData icons1 = Icons.remove_red_eye_outlined;
  IconData icons2 = Icons.remove_red_eye_rounded;
  @override
  void initState() {
    super.initState();
    _userController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(title: Text('登录'),),
      body: SafeArea(
         minimum: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _userController,
                decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "请输入用户名"
                ),
              ),
            ),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                children: [
                  TextField(
                    obscureText: checkPwd,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: "密码",
                      hintText: "请输入密码"
                    ),
                  ),
                  Positioned(top:13,right: 10,child: GestureDetector(child: Icon(checkPwd? icons1:icons2,size: 30,),onTap: () {
                      setState(() {
                        checkPwd = !checkPwd;
                      });
                      print("checkPwd:$checkPwd");
                  },))
                ],
              ),
            ),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top:20),
              child: ElevatedButton(
                style: ButtonStyle(
                   padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: 10)),
                ),
                child: Text("登录",style: TextStyle(fontSize: 20),),
                onPressed: () {
                  print("注册");
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:20),
              alignment: Alignment.center,
              child: Text.rich(TextSpan(children:[
                TextSpan(text:'还没有账号，'),
                WidgetSpan(child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, Routers.register);
                  },
                  child: Text("去注册",style: TextStyle(color: Colors.lightGreen[400])),
                ))
              ])),
            )  
          ],
        ),
      ),
    );
  }
}