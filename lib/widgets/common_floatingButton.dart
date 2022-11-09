import 'package:flutter/material.dart';

class CommonFloatingButton extends StatelessWidget {
  final String title;
  final VoidCallback goScreen;

  const CommonFloatingButton(this.title, this.goScreen,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        goScreen();
      },
      child: Container(
        height: 40.0,
        width:MediaQuery.of(context).size.width - 40,
        alignment: Alignment.center,
        child: Text(title,style: TextStyle(fontSize: 18,color:Colors.white,fontWeight: FontWeight.bold),),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(9)
        ),
      ),
    );
  }
}
