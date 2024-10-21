import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  CustomCircleAvatar(
      {super.key,
      this.alignment,
      this.backgroundColor,
      this.foregroundColor,
      this.backgroundImage,
      this.foregroundImage,
      this.radius,
      this.maxRadius,
      this.minRadius,
      this.child});
  final Alignment? alignment;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final ImageProvider? backgroundImage;
  final ImageProvider? foregroundImage;
  final double? radius;
  final double? minRadius;
  final double? maxRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildCircleAvatarWidget(),
          )
        : _buildCircleAvatarWidget();
  }

  _buildCircleAvatarWidget() {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      backgroundImage: backgroundImage,
      foregroundImage: foregroundImage,
      minRadius: minRadius,
      maxRadius: maxRadius,
      radius: radius,
    );
  }
}
