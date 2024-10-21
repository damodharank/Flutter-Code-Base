// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

final Size size =
    WidgetsBinding.instance.platformDispatcher.views.first.physicalSize /
        WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;

const double APP_DESIGN_WIDTH = 430;
const double APP_DESIGN_HEIGHT = 932;
const double APP_DESIGN_STATUS_BAR = 35;

double get width => size.width;

double get height {
  final MediaQueryData mediaQueryData =
      MediaQueryData.fromView(WidgetsBinding.instance.window);
  final double statusBar = mediaQueryData.viewPadding.top;
  final double bottomBar = mediaQueryData.viewPadding.bottom;
  return size.height - statusBar - bottomBar;
}

/// Set padding/margin responsively
double getHorizontalSize(double px) => (px * width) / APP_DESIGN_WIDTH;

/// Set padding/margin responsively
double getVerticalSize(double px) =>
    (px * height) / (APP_DESIGN_HEIGHT - APP_DESIGN_STATUS_BAR);

/// Set smallest px in image height and width
double getSize(double px) =>
    getVerticalSize(px).clamp(0, getHorizontalSize(px));

/// Set text font size according to Viewport
double getFontSize(double px) => getSize(px);

/// Set padding responsively
EdgeInsetsGeometry getPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) =>
    getMarginOrPadding(
        all: all, left: left, top: top, right: right, bottom: bottom);

/// Set margin responsively
EdgeInsetsGeometry getMargin({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) =>
    getMarginOrPadding(
        all: all, left: left, top: top, right: right, bottom: bottom);

/// Get padding or margin responsively
EdgeInsetsGeometry getMarginOrPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  if (all != null) {
    left = top = right = bottom = all;
  }
  return EdgeInsets.only(
    left: getHorizontalSize(left ?? 0),
    top: getVerticalSize(top ?? 0),
    right: getHorizontalSize(right ?? 0),
    bottom: getVerticalSize(bottom ?? 0),
  );
}
