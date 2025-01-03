import 'package:flutter/material.dart';
import 'package:notifyx/src/constants/constants.dart';
import 'package:notifyx/src/helper/helper.dart';

class AlertEnumTypes {
  /// color is optional, if provided null then `ColorConstants` will be used
  final Color? color;

  /// prefixIcon is optional, if provided null then `SizedBox()` will be used
  final Widget? prefixIcon;
  final String? key;

  const AlertEnumTypes({this.prefixIcon, this.color, this.key});

  static AlertEnumTypes infoSolid = AlertEnumTypes(
      key: 'infoSolid',
      prefixIcon:
          CSvgHelper.getSvgWidget(AppAssets.infoCircle, color: Colors.white),
      color: ColorConstants.bgInfoSolid);
  static AlertEnumTypes successSolid = AlertEnumTypes(
      key: 'successSolid',
      prefixIcon:
          CSvgHelper.getSvgWidget(AppAssets.checkCircle, color: Colors.white),
      color: ColorConstants.bgSuccessSolid);
  static AlertEnumTypes warningSolid = AlertEnumTypes(
      key: 'warningSolid',
      prefixIcon: CSvgHelper.getSvgWidget(AppAssets.exclamationTriangle,
          color: Colors.white),
      color: ColorConstants.bgWarningSolid);
  static AlertEnumTypes errorSolid = AlertEnumTypes(
      key: 'errorSolid',
      prefixIcon:
          CSvgHelper.getSvgWidget(AppAssets.infoCircle, color: Colors.white),
      color: ColorConstants.bgErrorSolid);
  static AlertEnumTypes primarySolid = AlertEnumTypes(
      key: 'primarySolid',
      prefixIcon: CSvgHelper.getSvgWidget(AppAssets.star),
      color: ColorConstants.bgPrimarySolid);

  static AlertEnumTypes infoSoft = AlertEnumTypes(
      key: 'infoSoft',
      prefixIcon: CSvgHelper.getSvgWidget(AppAssets.infoCircle,
          color: ColorConstants.bgInfoSolid),
      color: ColorConstants.bgInfoPrimary);
  static AlertEnumTypes successSoft = AlertEnumTypes(
      key: 'successSoft',
      prefixIcon: CSvgHelper.getSvgWidget(AppAssets.checkCircle,
          color: ColorConstants.bgSuccessSolid),
      color: ColorConstants.bgSuccessPrimary);
  static AlertEnumTypes warningSoft = AlertEnumTypes(
      key: 'warningSoft',
      prefixIcon: CSvgHelper.getSvgWidget(AppAssets.exclamationTriangle,
          color: ColorConstants.bgWarningSolid),
      color: ColorConstants.bgWarningPrimary);
  static AlertEnumTypes errorSoft = AlertEnumTypes(
      key: 'errorSoft',
      prefixIcon: CSvgHelper.getSvgWidget(AppAssets.infoCircle,
          color: ColorConstants.bgErrorSolid),
      color: ColorConstants.bgErrorPrimary);
  static AlertEnumTypes primarySoft = AlertEnumTypes(
      key: 'primarySoft',
      prefixIcon: CSvgHelper.getSvgWidget(AppAssets.star,
          color: ColorConstants.bgPrimarySolid),
      color: ColorConstants.bgTertiaryPrimary);

  static AlertEnumTypes infoOutlined = AlertEnumTypes(
      key: 'infoOutlined',
      prefixIcon: CSvgHelper.getSvgWidget(AppAssets.infoCircle,
          color: ColorConstants.bgInfoSolid),
      color: Colors.white);
  static AlertEnumTypes successOutlined = AlertEnumTypes(
      key: 'successOutlined',
      prefixIcon: CSvgHelper.getSvgWidget(AppAssets.checkCircle,
          color: ColorConstants.bgSuccessSolid),
      color: Colors.white);
  static AlertEnumTypes warningOutlined = AlertEnumTypes(
      key: 'warningOutlined',
      prefixIcon: CSvgHelper.getSvgWidget(AppAssets.exclamationTriangle,
          color: ColorConstants.bgWarningSolid),
      color: Colors.white);
  static AlertEnumTypes errorOutlined = AlertEnumTypes(
      key: 'errorOutlined',
      prefixIcon: CSvgHelper.getSvgWidget(AppAssets.infoCircle,
          color: ColorConstants.bgErrorSolid),
      color: Colors.white);
  static AlertEnumTypes primaryOutlined = AlertEnumTypes(
      key: 'primaryOutlined',
      prefixIcon: CSvgHelper.getSvgWidget(AppAssets.star,
          color: ColorConstants.bgPrimarySolid),
      color: Colors.white);
}
