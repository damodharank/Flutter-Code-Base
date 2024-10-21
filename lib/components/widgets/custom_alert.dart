import 'package:TUPmob/config/theme/size_utils.dart';
import 'package:TUPmob/constants/constants.dart';
import 'package:flutter/material.dart';

Future<dynamic> customAlert(
    TextTheme textTheme,
    ColorScheme colorScheme,
    BuildContext context,
    String message,
    String textButtonName,
    Function function,
    IconData icon) {
  return showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Center(
          child: Text(
        message,
        style: textTheme.bodyMedium,
      )),
      content: CircleAvatar(
        backgroundColor: colorScheme.primary,
        radius: 40,
        child: Icon(
          icon,
          color: colorScheme.surface,
          size: 40,
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            function();
          },
          child: Center(
            child: Container(
                decoration: BoxDecoration(
                    color: colorScheme.secondary,
                    border: Border.all(color: colorScheme.primary)),
                child: Padding(
                  padding: getPadding(all: defaultPadding),
                  child: Text(
                    textButtonName,
                    style: textTheme.bodyMedium?.copyWith(color: Colors.black),
                  ),
                )),
          ),
        ),
      ],
    ),
  );
}
