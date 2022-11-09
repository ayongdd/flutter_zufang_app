import 'package:flutter/material.dart';
import 'package:hook_up_rent/widgets/common_floatingButton.dart';
import 'package:hook_up_rent/widgets/common_form_item.dart';
import 'package:hook_up_rent/widgets/common_title.dart';

class RoomAddPage extends StatefulWidget {
  const RoomAddPage({Key? key}) : super(key: key);

  @override
  State<RoomAddPage> createState() => _RoomAddPageState();
}

class _RoomAddPageState extends State<RoomAddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("房源管理"),
      ),
      body: ListView(
        children: [
          CommonTitle("房源信息"),
          CommonFormItem(
            label:"租金",
            hintText: "请输入租金",
            subffixText: "元/月",
            controller: TextEditingController(),
          ),
          CommonTitle("房屋大小"),

            CommonFormItem(
            label:"大小",
            hintText: "请输入房屋大小",
            subffixText: "平方米",
            controller: TextEditingController(),
          ),
          CommonTitle("房源标题"),
          CommonTitle("房源配置"),
          CommonTitle("房源描述"),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CommonFloatingButton("提交", () {}),
    );
  }
}
