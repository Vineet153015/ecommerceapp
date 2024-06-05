import 'package:get/get.dart';

// Screen height for Pixel 7 is 850
class Dimensions{
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageViewContainer = screenHeight/3.86;
  static double pageViewTextContainer = screenHeight/7.08;
  static double pageView = screenHeight/2.65;
// dynamic height padding and margin
  static double height10 =screenHeight/85;
  static double height20 =screenHeight/42.5;
  static double height15 =screenHeight/56.66;
  static double height30 =screenHeight/22.33;
  static double height45 =screenHeight/18.88;

  // dynamic width padding and margin
  static double width10 =screenHeight/85;
  static double width20 =screenHeight/42.5;
  static double width15 =screenHeight/56.66;
  static double width40 =screenHeight/21.25;
  static double width45 =screenHeight/18.88;
  
  
  static double font20 = screenHeight/42.5;

  // dynamic radius
  static double radius20 = screenHeight/42.5;
  static double radius30 = screenHeight/28.33;
  static double radius15 = screenHeight/56.66;

  // icon size
  static double iconSize24 = screenHeight/35.41;
}