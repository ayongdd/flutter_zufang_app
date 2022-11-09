import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:hook_up_rent/widgets/common_image.dart';


List<String> images =[
  "static/images/banner.jpg",
  "static/images/banner.jpg",
  "static/images/banner.jpg"
];
class CommonSwiper extends StatelessWidget {
  const CommonSwiper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      // decoration:BoxDecoration(
      //   border: Border.all(width: 1)
      // ),
      child: new Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context,int index) {
          return CommonImage(images[index],width: double.infinity,fit: BoxFit.fill,);
          // return Image.network(images[index],width: double.infinity,fit: BoxFit.fill);
        },
        itemCount: images.length,
        pagination: new SwiperPagination(),
        // control: new SwiperControl(), //左右箭头
      ),
    );
  }
}