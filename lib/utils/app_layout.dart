import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static GetHeight(double pixels) {
    var x = getScreenHeight() / pixels; // 844/200=4.22
    return getScreenHeight() / x;
  }

  static GetWidth(double pixels) {
    var x = getScreenWidth()() / pixels;
    return getScreenWidth() / x;
  }
}
