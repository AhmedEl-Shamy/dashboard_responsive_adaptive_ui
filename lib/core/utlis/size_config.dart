import 'package:flutter/material.dart';

enum DeviceLayoutType {
  mobile,
  tablet,
  desktop,
}

abstract class SizeConfig {
  static const tabletBreakPoint = 800;
  static const desktopBreakPoint = 1200;

  static DeviceLayoutType getLayoutType (BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    if(width < tabletBreakPoint) {
      return DeviceLayoutType.mobile;
    } else if (width < desktopBreakPoint) {
      return DeviceLayoutType.tablet;
    } else {
      return DeviceLayoutType.desktop;
    }
  }

  static double getScalingFactor (BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double factor = 1;
    switch (getLayoutType(context)) {
      case DeviceLayoutType.mobile:
        factor = screenWidth / 600;
        break;
      case DeviceLayoutType.tablet:
        factor  = screenWidth / 1000;
        break;
      case DeviceLayoutType.desktop:
        factor = screenWidth / 1440;
        break;
    }
    return factor.clamp(0.8, 1.2);
  }
}
