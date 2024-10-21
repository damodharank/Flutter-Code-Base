import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  // White Colors
  static Color addBgColor = fromHex('#ffffff');
  static Color whiteA100 = fromHex('#ffffff');

  // Orange Colors
  static Color synOrange10 = fromHex('#fcd1b9');
  static Color synOrange100 = fromHex('#F26522');
  static Color synOrange30 = fromHex('#FEE0D0');
  static Color synOrange10001 = fromHex('#718ebf');

  // Red Colors
  static Color red100 = fromHex('#d13329');

  // Green Colors
  static Color green100 = fromHex('#359766');
  static Color green90 = fromHex('#28A745');

  // Gray Colors
  static Color gray100 = fromHex('#505050');
  static Color gray90 = fromHex('#606060');
  static Color gray70 = fromHex('#808080');
  static Color gray60 = fromHex('#A9A9A9');
  static Color gray50 = fromHex('#C0C0C0');
  static Color gray30 = fromHex('#CEDFF5');
  static Color gray10 = fromHex('#f4f6fa');

  // Black Colors
  static Color black100 = fromHex('#000000');
  static Color black90 = fromHex('#333333');

  // Blue Colors
  static Color blue70 = fromHex('#3E64FF');

  // Miscellaneous Colors
  static Color appHdrColor = fromHex('#5F5252');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
