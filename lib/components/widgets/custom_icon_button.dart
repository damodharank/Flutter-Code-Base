import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;
  final VoidCallback onPressed;
  final BuildContext context;

  const CustomIconButton({super.key, 
    required this.icon,
    required this.size,
    required this.color,
    required this.onPressed,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        size: size,
        color: color,
      ),
      onPressed: onPressed,
    );
  }
}
