import 'package:flutter/material.dart';
import 'package:hook_up_rent/widgets/common_image.dart';


class InfoItem extends StatelessWidget {
  final String src;
  final String title;
  final String from;
  final String time;
  final Function(BuildContext context) onTap; 
  const InfoItem({ Key? key,required this.src,required this.title,required this.from,required this.time,required this.onTap }) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    // var styles = TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black);
    var style1 = TextStyle(fontSize: 16,color: Colors.black38);
    return InkWell(
      onTap: () {
        onTap(context);
      },
      child: Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Expanded(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonImage(src,width: 100,height: 80,fit: BoxFit.fill,),
            Container(
              width: MediaQuery.of(context).size.width - 100 - 40,
              child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(alignment: Alignment.centerLeft,child: Text(title,textAlign: TextAlign.left,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)),
                SizedBox(height: 10,),
                // Text(title,style: styles,),
                // Expanded(flex: 1,child:Text(title,style: styles,)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(from,style:style1),
                    Text(time,style:style1)
                  ],
                )
              ],
            ),
            )
          ],
        ),)
      ),
    );
  }
}