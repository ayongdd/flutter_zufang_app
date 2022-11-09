// import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
class CommonToast {
  static showToast(String msg) {
    Toast.show(msg, duration: Toast.lengthShort, gravity:  Toast.bottom);
  }
}
