import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CSvgHelper {
  static Widget getSvgWidget(String assetName, {Color? color}) {
    return SvgPicture.asset(
      assetName,
      fit: BoxFit.contain,
      color: color,
    );
  }
}