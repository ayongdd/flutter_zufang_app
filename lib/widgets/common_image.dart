import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

final networkUriReg = RegExp('^http');
final localUriReg = RegExp('^static');

//图片类
class CommonImage extends StatelessWidget {
  final String src;
  final double? width; 
  final double? height;
  final BoxFit? fit;
  
  const CommonImage(this.src,{ Key? key,this.width,this.height,this.fit }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(networkUriReg.hasMatch(src)) { //网络图片
       return CachedNetworkImage(
         imageUrl: src, //加载地址
         width: width,
         height: height,
         imageBuilder: (context, imageProvider) => Container( //占位样式
          decoration: BoxDecoration(
            image: DecorationImage(
            image: imageProvider,
            fit: fit,
            // colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorBurn)
            ),
          ),
        ),
        placeholder: (context, url) => CircularProgressIndicator(), //加载中
        errorWidget: (context, url, error) => Icon(Icons.error), //加载失败
       );
    }
    if(localUriReg.hasMatch(src)) { //本地图片
      return Image.asset(src,width: width,height: height,fit: fit,);
    }
    // 报错断言
    assert(false,"图片地址src不合法");
    return SizedBox();
  }
}