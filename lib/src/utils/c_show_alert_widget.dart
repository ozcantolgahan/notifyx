import 'package:flutter/material.dart';

/// A function to show an animated alert overlay in the current context.
///
/// This function adds an animated alert widget to the screen using the overlay.
/// It prevents multiple alerts from being shown simultaneously and ensures that
/// the alert is removed after a specified duration or when the animation finishes.
///
/// Properties:
/// - `context`: The BuildContext in which the alert should be displayed.
/// - `alertWidget`: The custom widget that will be displayed as the alert content.
/// - `duration`: The duration the alert will stay visible before automatically dismissing. Defaults to 2 seconds.
/// - `animationDuration`: The duration of the slide animation for showing and dismissing the alert. Defaults to 500 milliseconds.
/// - `topPadding`: Optional padding to adjust the position of the alert from the top of the screen.
/// - `leftPadding`: Optional padding to adjust the position of the alert from the left of the screen.
/// - `rightPadding`: Optional padding to adjust the position of the alert from the right of the screen.
///
/// The function ensures only one alert is shown at a time by using a static flag (`_isAlertVisible`).
/// Once the alert is dismissed, the flag is reset, allowing a new alert to be shown.
void showAnimatedAlert(
    {required BuildContext context,
    required Widget alertWidget,
    Duration duration = const Duration(seconds: 2),
    Duration animationDuration = const Duration(milliseconds: 500),
    double? topPadding,
    double? leftPadding,
    double? rightPadding}) {
  final overlay =
      Overlay.of(context); // Return early if overlay is not available.

  // Static variable to track if the alert is currently visible.
  if (_isAlertVisible) {
    return; // Prevent showing a new alert if one is already visible.
  }

  late OverlayEntry overlayEntry;

  overlayEntry = OverlayEntry(
    builder: (context) => AnimatedAlertWidget(
      topPadding: topPadding,
      leftPadding: leftPadding,
      rightPadding: rightPadding,
      alertWidget: alertWidget,
      duration: duration,
      animationDuration: animationDuration,
      onDismissed: () {
        overlayEntry.remove();
        _isAlertVisible = false; // Reset the visibility flag once dismissed.
      },
    ),
  );

  overlay.insert(overlayEntry);
  _isAlertVisible = true; // Set the flag to true once the alert is added.
}

// Static flag to track alert visibility.
bool _isAlertVisible = false;

class AnimatedAlertWidget extends StatefulWidget {
  final Widget alertWidget;
  final Duration duration;
  final Duration animationDuration;
  final VoidCallback onDismissed;
  final double? topPadding;
  final double? leftPadding;
  final double? rightPadding;

  const AnimatedAlertWidget(
      {super.key,
      required this.alertWidget,
      required this.duration,
      required this.animationDuration,
      required this.onDismissed,
      this.topPadding,
      this.leftPadding,
      this.rightPadding});

  @override
  State<AnimatedAlertWidget> createState() => _AnimatedAlertWidgetState();
}

class _AnimatedAlertWidgetState extends State<AnimatedAlertWidget>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _animationController.forward();

    Future.delayed(widget.duration, () async {
      await _animationController.reverse();
      widget.onDismissed();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.topPadding ?? 50,
      left: widget.leftPadding ?? 10,
      right: widget.rightPadding ?? 10,
      child: SlideTransition(
        position: _slideAnimation,
        child: Material(
          color: Colors.transparent,
          child: widget.alertWidget,
        ),
      ),
    );
  }
}
