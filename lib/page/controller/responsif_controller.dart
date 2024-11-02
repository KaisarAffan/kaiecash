import 'package:get/get.dart';

//1#
class ResponsifController extends GetxController {
  var screenWidth = 0.0.obs;

  void updateScreenWidth(double width) {
    screenWidth.value = width;
    print("kaisarrrrrr$width");
  }

  bool isMobile() => screenWidth < 600;
  bool isTablet() => screenWidth >= 600 && screenWidth.value < 1200;
}
