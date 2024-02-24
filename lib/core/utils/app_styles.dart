import 'dart:math';

import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular12(context) => TextStyle(
        color: const Color(0xffFFFFFF),
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegular13(context) => TextStyle(
        color: const Color(0xff718EBF),
        fontSize: getResponsiveFontSize(context, fontSize: 13),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegular14(context) => TextStyle(
        color: const Color(0xff718EBF),
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegular15(context) => TextStyle(
        color: const Color(0xff8BA3CB),
        fontSize: getResponsiveFontSize(context, fontSize: 15),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleSemiBold15(context) => TextStyle(
        color: const Color(0xff343C6A),
        fontSize: getResponsiveFontSize(context, fontSize: 15),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleRegular16(context) => TextStyle(
        color: const Color(0xff232323),
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleMedium18(context) => TextStyle(
        color: const Color(0xffB1B1B1),
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleMedium16(context) => TextStyle(
        color: const Color(0xff232323),
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleSemiBold17(context) => TextStyle(
        color: const Color(0xff343C6A),
        fontSize: getResponsiveFontSize(context, fontSize: 17),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleSemiBold20(context) => TextStyle(
        color: const Color(0xffFFFFFF),
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleSemiBold22(context) => TextStyle(
        color: const Color(0xff343C6A),
        fontSize: getResponsiveFontSize(context, fontSize: 22),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleSemiBold28(context) => TextStyle(
        color: const Color(0xff343C6A),
        fontSize: getResponsiveFontSize(context, fontSize: 28),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
      );
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physiscalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // var width = physiscalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  print(width);
  if (width < 800) {
    return width / 550;
  } else if (width < 1100) {
    return width / 1100;
  } else {
    return width / 1800;
  }
}
