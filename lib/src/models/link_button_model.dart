import 'package:flutter/material.dart';

class LinkButtonModel {
  final String title;
  final TextStyle? textStyle;
  final void Function() onTap;
  const LinkButtonModel({
    required this.title,
    required this.onTap,
    this.textStyle,
  });
}
