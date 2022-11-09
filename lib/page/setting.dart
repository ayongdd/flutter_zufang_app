import 'package:flutter/material.dart';
import 'package:hook_up_rent/widgets/common_toast.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                print("退出登录");
                CommonToast.showToast("已经退出登录");
              }, 
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: 10)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green)
              ),
              child: Text("退出登录",style: TextStyle(fontSize: 20.0),)
            ),
          )
        ],
      ),
    );
  }
}
