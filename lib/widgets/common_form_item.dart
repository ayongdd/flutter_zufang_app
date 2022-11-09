import 'package:flutter/material.dart';

class CommonFormItem extends StatelessWidget {
  final  String? label;
  final  Widget Function(BuildContext context)? contentBuilder;
  final Widget? suffix;
  final String? subffixText;
  final String? hintText;
  final ValueChanged? onChanged;
  final TextEditingController? controller;

  const CommonFormItem({Key? key, this.label, this.contentBuilder, this.suffix, this.subffixText, this.hintText, this.onChanged, this.controller}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1,color:Theme.of(context).dividerColor)
        )
      ),
      child: Row(
        children: [
          Container(
            width: 80.0,
            child: Text(label??"",style: TextStyle(fontSize: 16.0),),
          ),
          contentBuilder !=null? contentBuilder!(context):
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none
              ),
            ),
          ),
          if(suffix != null) suffix!,
          if(suffix == null && subffixText != null) Text(subffixText ?? "") 
          
        ],
      ),
    );
  }
}