import 'package:flutter/material.dart';
import 'package:TUPmob/config/theme/responsive.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {super.key,
      required this.title,
      required this.rightButton,
      this.leadingWidth,
      this.leading,
      required this.iconColor,
      required this.context});

  final BuildContext context;
  final Widget title;
  final Widget rightButton;
  final Color iconColor;

  double? leadingWidth;
  Widget? leading;

  @override
  Size get preferredSize {
    if (Responsive.isMobile(context)) {
      return AppBar().preferredSize; // Return preferred size of AppBar
    } else {
      return const Size.fromHeight(60); // Return zero height to hide app bar
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
          size:
              Responsive.isMobile(context) ? 30 : 40, //change size on your need
          color: iconColor),
      elevation: 0,
      leading: leading,
      title: title,
      actions: [rightButton],
    );
  }
}
