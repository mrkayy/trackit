import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackit/core/themes/app_color.dart';
import 'package:trackit/core/themes/color_scheme.dart';

class AppThemeData {
  static final _appColor = AppColors();
  static ThemeData lightTheme =
      ThemeData(colorScheme: AppColorSchemes.lightScheme, fontFamily: "SourceSansPro").copyWith(
    scaffoldBackgroundColor: _appColor.gray50,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _appColor.indigo50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        padding: EdgeInsets.zero,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: _appColor.blueGray400,
          width: 1.h,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.h),
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        padding: EdgeInsets.zero,
      ),
    ),
    dividerTheme: DividerThemeData(
      thickness: 1,
      space: 1,
      color: _appColor.gray100,
    ),
  );

  static ThemeData darkTheme = ThemeData.from(colorScheme: AppColorSchemes.darkScheme);
}
