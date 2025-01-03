import 'package:flutter/material.dart';
import 'package:notifyx/src/constants/constants.dart';

class CTextStyles {
  // **Solid Alerts Styles**: These styles are used for strong, prominent alerts with white color.

  static TextStyle get white14W400 => const TextStyle(
      color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle get white14W600 => const TextStyle(
      color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600);
  static TextStyle get white14W600Underline => const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
      decorationColor: Colors.white);

  // **Soft Alerts Styles**: These styles are used for softer, informational alerts or messages.

  static TextStyle get textPrimary14W400 => TextStyle(
      color: ColorConstants.textPrimary,
      fontSize: 14,
      fontWeight: FontWeight.w400);
  static TextStyle get textPrimary14W600 => TextStyle(
      color: ColorConstants.textPrimary,
      fontSize: 14,
      fontWeight: FontWeight.w600);
  static TextStyle get textPrimary14W600Underline => TextStyle(
      color: ColorConstants.textPrimary,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
      decorationColor: ColorConstants.textPrimary);
}
