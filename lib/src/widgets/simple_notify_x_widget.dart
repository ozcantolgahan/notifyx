/// A simple and customizable notification widget to display alert messages.
///
/// This widget is designed to display a notification with a title, optional link button,
/// and optional suffix icon (e.g., a cancel button). The notification's appearance
/// can be customized based on the alert type (e.g., solid or outlined). Additionally,
/// it supports a custom style for the title text and allows actions like dismissing
/// the alert using the cancel button or tapping a link button.
///
/// Properties:
/// - `type`: Defines the type of the alert (solid, outlined, etc.) and controls its appearance.
/// - `title`: The main title of the notification (displayed prominently).
/// - `textStyle`: Optional custom style for the title text.
/// - `linkButton`: An optional `LinkButtonModel` for adding a clickable button within the alert.
/// - `suffixIcon`: An optional widget (e.g., cancel icon) displayed on the right side of the notification.
/// - `hasCancelIcon`: Determines whether a cancel icon should be displayed (default is `true`).
/// - `cancelOnTap`: Callback function triggered when the cancel icon is tapped.

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notifyx/src/constants/constants.dart';
import 'package:notifyx/src/enums/enums.dart';
import 'package:notifyx/src/models/models.dart';
import 'package:notifyx/src/styles/styles.dart';

class SimpleNotifyX extends StatelessWidget {
  const SimpleNotifyX(
      {super.key,
      required this.type,
      required this.title,
      this.textStyle,
      this.linkButton,
      this.suffixIcon,
      this.hasCancelIcon = true,
      this.cancelOnTap});
  final AlertEnumTypes type;
  final String title;
  final TextStyle? textStyle;
  final LinkButtonModel? linkButton;
  final Widget? suffixIcon;
  final bool hasCancelIcon;
  final void Function()? cancelOnTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: (type.key ?? '').toLowerCase().contains('outlined')
          ? CBoxStyles.getRadiusSMWithBorderColorBoxStyle
          : CBoxStyles.getRadiusSMBoxStyle(type.color),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                type.prefixIcon ?? const SizedBox(),
                if (type.prefixIcon != null)
                  const SizedBox(
                    width: 8,
                  ),
                Expanded(
                  child: Text(
                    title,
                    style: textStyle ??
                        ((type.key ?? '').toLowerCase().contains('solid')
                            ? CTextStyles.white14W400
                            : CTextStyles.textPrimary14W400),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Row(
            children: [
              if (linkButton != null)
                InkWell(
                  onTap: linkButton!.onTap,
                  child: Text(
                    linkButton!.title,
                    style: linkButton!.textStyle ??
                        ((type.key ?? '').toLowerCase().contains('solid')
                            ? CTextStyles.white14W600Underline
                            : CTextStyles.textPrimary14W600Underline),
                  ),
                ),
              const SizedBox(
                width: 6,
              ),
              suffixIcon ??
                  (hasCancelIcon
                      ? InkWell(
                          onTap: cancelOnTap,
                          child: SvgPicture.asset(
                            AppAssets.times,
                            color:
                                (type.key ?? '').toLowerCase().contains('solid')
                                    ? null
                                    : ColorConstants.textPrimary,
                          ))
                      : const SizedBox())
            ],
          )
        ],
      ),
    );
  }
}
