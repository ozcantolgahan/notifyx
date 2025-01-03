import 'package:flutter/material.dart';
import 'package:notifyx/src/constants/constants.dart';

class CBoxStyles {
  static BoxDecoration getRadiusSMBoxStyle(color) => BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      );
  static BoxDecoration get getRadiusSMWithBorderColorBoxStyle => BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: ColorConstants.borderSecondary));
}
