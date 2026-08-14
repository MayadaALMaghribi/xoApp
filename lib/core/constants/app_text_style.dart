import 'package:flutter/painting.dart';
import 'package:xoapp/core/constants/app_color.dart';

abstract final class AppTextStyle {
  static const white40larg = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w900,
    color: AppColor.white,
  );
  static const white24Medium = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColor.white,
  );
  static const white36Bold = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    color: AppColor.white,
  );
  static const black32SemiBold = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: AppColor.black,
  );
}
