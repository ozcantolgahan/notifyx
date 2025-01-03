/// A customizable widget to display rich notifications with various types of alerts.
///
/// This widget allows you to display different types of alerts (e.g., solid or outlined) with various components such as:
/// - **Title and Description**: Display a title and description for the alert. Both can have custom text styles.
/// - **Icons**: Supports a prefix icon and an optional suffix icon (e.g., cancel icon).
/// - **Link Button**: An optional clickable button for performing actions (such as navigating).
/// - **Styling**: You can customize the appearance with the alert type (e.g., color, border) and text styles.
///
/// The widget will automatically adapt its appearance based on the provided `AlertEnumTypes` (e.g., solid or outlined types).
/// You can also customize the title and description texts, as well as the action button's text style.
///
/// Properties:
/// - `type`: Defines the type of the alert (solid, outlined, etc.) and controls its appearance.
/// - `title`: Optional title text for the alert.
/// - `description`: Optional description text for the alert.
/// - `titleTextStyle`: Optional custom style for the title text.
/// - `descriptionTextStyle`: Optional custom style for the description text.
/// - `suffixIcon`: Optional widget that will appear on the right side of the alert, such as a close button.
/// - `hasCancelIcon`: Determines whether to show a cancel icon (default is `true`).
/// - `cancelOnTap`: Callback function triggered when the cancel icon is tapped.
/// - `linkButton`: An optional `LinkButtonModel` for adding a clickable button within the alert.

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notifyx/src/constants/constants.dart';
import 'package:notifyx/src/enums/enums.dart';
import 'package:notifyx/src/models/models.dart';
import 'package:notifyx/src/styles/styles.dart';

class RichNotifyXWidget extends StatelessWidget {
  const RichNotifyXWidget(
      {super.key,
      required this.type,
      this.title,
      this.description,
      this.titleTextStyle,
      this.descriptionTextStyle,
      this.suffixIcon,
      this.hasCancelIcon = true,
      this.cancelOnTap,
      this.linkButton});
  final AlertEnumTypes type;
  final String? title;
  final String? description;
  final TextStyle? titleTextStyle;
  final TextStyle? descriptionTextStyle;
  final Widget? suffixIcon;
  final bool hasCancelIcon;
  final void Function()? cancelOnTap;
  final LinkButtonModel? linkButton;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: (type.key ?? '').toLowerCase().contains('outlined')
          ? CBoxStyles.getRadiusSMWithBorderColorBoxStyle
          : CBoxStyles.getRadiusSMBoxStyle(type.color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _structureTileWidget(
              title != null || description != null
                  ? Text(title ?? description!,
                      style: (title != null
                          ? titleTextStyle ??
                              ((type.key ?? '').toLowerCase().contains('solid')
                                  ? CTextStyles.white14W600
                                  : CTextStyles.textPrimary14W600)
                          : descriptionTextStyle ??
                              ((type.key ?? '').toLowerCase().contains('solid')
                                  ? CTextStyles.white14W400
                                  : CTextStyles.textPrimary14W400)))
                  : const SizedBox(),
              1),
          if (title != null && description != null)
            const SizedBox(
              height: 4,
            ),
          if (title != null && description != null)
            _structureTileWidget(
                description != null
                    ? Text(description!,
                        style: descriptionTextStyle ??
                            ((type.key ?? '').toLowerCase().contains('solid')
                                ? CTextStyles.white14W400
                                : CTextStyles.textPrimary14W400))
                    : const SizedBox(),
                0),
          if (linkButton != null)
            const SizedBox(
              height: 10,
            ),
          if (linkButton != null)
            _structureTileWidget(
                linkButton != null
                    ? InkWell(
                        onTap: linkButton!.onTap,
                        child: Text(
                          linkButton!.title,
                          style: linkButton!.textStyle ??
                              ((type.key ?? '').toLowerCase().contains('solid')
                                  ? CTextStyles.white14W600Underline
                                  : CTextStyles.textPrimary14W600Underline),
                        ),
                      )
                    : const SizedBox(),
                0),
        ],
      ),
    );
  }

  Widget _structureTileWidget(Widget childWidget, double opacity) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: opacity,
                  child: type.prefixIcon ?? const SizedBox(),
                ),
                if (type.prefixIcon != null)
                  const SizedBox(
                    width: 10,
                  ),
                Expanded(child: childWidget),
              ],
            )),
        const SizedBox(
          width: 8,
        ),
        Opacity(
          opacity: opacity,
          child: suffixIcon ??
              (hasCancelIcon
                  ? InkWell(
                      onTap: cancelOnTap,
                      child: SvgPicture.asset(
                        AppAssets.times,
                        color: (type.key ?? '').toLowerCase().contains('solid')
                            ? null
                            : ColorConstants.textPrimary,
                      ))
                  : const SizedBox()),
        )
      ],
    );
  }
}
