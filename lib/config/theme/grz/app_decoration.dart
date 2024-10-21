import 'package:flutter/material.dart';
import 'package:TUPmob/config/theme/grz/color_constant.dart';
import 'package:TUPmob/config/theme/grz/size_utils.dart';

class AppDecoration {
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get fillSynOrange100 => BoxDecoration(
        color: ColorConstant.synOrange100,
      );
  static BoxDecoration get outlineBluegray400 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray100,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BoxDecoration get fillGreen100 => BoxDecoration(
        color: ColorConstant.green100,
      );

  static BoxDecoration get txtfillSynOrange100 => BoxDecoration(
        color: ColorConstant.synOrange100,
      );
  static BoxDecoration get fillwhiteA100 => BoxDecoration(
        color: ColorConstant.whiteA100,
      );
  static BoxDecoration get outlineGray100 => BoxDecoration(
        color: ColorConstant.whiteA100,
        border: Border(
          right: BorderSide(
            color: ColorConstant.gray100,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );

  static BoxDecoration get gradientwhiteA100whiteA100 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(
            0.5,
            0,
          ),
          end: const Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.whiteA100,
            ColorConstant.whiteA100,
          ],
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderBL15 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        15,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        15,
      ),
    ),
  );

  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15,
    ),
  );

  static BorderRadius circleBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25,
    ),
  );

  static BorderRadius circleBorder85 = BorderRadius.circular(
    getHorizontalSize(
      85,
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius txtCircleBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25,
    ),
  );
}

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;
