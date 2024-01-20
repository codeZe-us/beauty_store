// import 'package:flutter/material.dart';

// const double baseHeight = 780;
// const double baseWidth = 360;

// double width(BuildContext context) => MediaQuery.of(context).size.width;
// double height(BuildContext context) => MediaQuery.of(context).size.height;
// double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
// double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

// double scaleHeight(double val, BuildContext context) =>
//     MediaQuery.of(context).size.height / baseHeight * val;
// double scaleWidth(double val, BuildContext context) =>
//     MediaQuery.of(context).size.width / baseWidth * val;
// double scaleRadius(double val, BuildContext context) =>
//     MediaQuery.of(context).size.height / baseHeight * val;


import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late Orientation orientation;
  
  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 812.0) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth ;
  return (inputWidth /  375.8) * screenWidth;
}
