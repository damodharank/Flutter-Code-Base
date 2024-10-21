import 'package:flutter/material.dart';

Container submitButton(ColorScheme colorScheme, TextTheme textTheme,
    Function callBackFunction, String text) {
  return Container(
    height: 45,
    width: 120,
    decoration: BoxDecoration(color: colorScheme.primary),
    child: TextButton(
        onPressed: () => callBackFunction(),
        child: Text(text,
            style: textTheme.bodyMedium?.copyWith(color: colorScheme.surface))),
  );
}
