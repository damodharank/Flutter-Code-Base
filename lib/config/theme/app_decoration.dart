import 'package:flutter/material.dart';
import 'package:TUPmob/config/theme/color_constant.dart';
import 'package:TUPmob/config/theme/size_utils.dart';

/// A class that defines various decorations used in the app.
class AppDecoration {
  /// A BoxDecoration with a gray background color.
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
}

/// A class that defines various border radius styles used in the app.
class BorderRadiusStyle {
  /// A custom border radius with bottom-left and bottom-right corners rounded to 15 units.
  static BorderRadius customBorderBL15 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(15),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(15),
    ),
  );

  /// A rounded border radius with all corners rounded to 5 units.
  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(5),
  );
}

/// Constants for stroke alignment.
double get strokeAlignInside => BorderSide.strokeAlignInside;
double get strokeAlignCenter => BorderSide.strokeAlignCenter;
double get strokeAlignOutside => BorderSide.strokeAlignOutside;
