import 'package:domi_track/core/constants/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme();

  ThemeData get themeData {
    return ThemeData(
      primaryColor: AppColors.black,
      canvasColor: AppColors.white,
      scaffoldBackgroundColor: AppColors.grey,
      splashColor: AppColors.transparent,
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: AppColors.white),
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: AppColors.black),
    );
  }
}
