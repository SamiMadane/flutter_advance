import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resourses/fonts_manager.dart';

TextStyle _getTextStyle(
  double fontSize,
  FontWeight fontWeight,
  Color color,
  TextDecoration decoration,
  dynamic overflow,
  double height,
) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    decoration: decoration,
    overflow: overflow,
    height: height,
  );
}

// Regular TextStyle
TextStyle getRegularTextStyle({
  required double fontSize,
  required Color color,
  dynamic overflow = TextOverflow.visible,
  TextDecoration decoration = TextDecoration.none,
  double? height,
}) {
  return _getTextStyle(
    fontSize,
    ManagerFontWeight.regular,
    color,
    decoration,
    overflow,
    height!,
  );
}

// Medium TextStyle
TextStyle getMediumTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
  dynamic overflow = TextOverflow.visible,
  double? height,
}) {
  return _getTextStyle(
    fontSize,
    ManagerFontWeight.medium,
    color,
    decoration,
    overflow,
    height!,
  );
}

// SemiBold TextStyle
TextStyle getSemiBoldTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
  dynamic overflow = TextOverflow.visible,
  double? height,
}) {
  return _getTextStyle(
    fontSize,
    ManagerFontWeight.semiBold,
    color,
    decoration,
    overflow,
    height!,
  );
}

// Bold TextStyle
TextStyle getBoldTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
  dynamic overflow = TextOverflow.visible,
  double? height,
}) {
  return _getTextStyle(
    fontSize,
    ManagerFontWeight.bold,
    color,
    decoration,
    overflow,
    height!,
  );
}

