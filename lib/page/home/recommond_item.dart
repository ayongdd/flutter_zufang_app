import 'package:flutter/material.dart';
import 'package:hook_up_rent/widgets/common_image.dart';

class RecommondItem extends StatelessWidget {
  final String title1;
  final String title2;
  final String src;
  const RecommondItem({ Key? key,required this.title1,required this.title2,required this.src }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width-10*4)/2,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(title1,style: TextStyle(fontSize: 18,color: Colors.black),), 
              Text(title2,style: TextStyle(fontSize: 18,color: Colors.black))
            ],
          ),
          CommonImage(src,width: 50,height: 50,fit: BoxFit.fill,)
        ],
      ),
    );
  }
}