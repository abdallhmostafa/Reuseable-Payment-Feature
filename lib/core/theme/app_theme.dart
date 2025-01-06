import 'package:flutter/material.dart';
import 'package:payment_feature/core/theme/app_text_style.dart';

abstract class AppTheme {
  static ThemeData get theme => ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey),
          ),
          labelStyle: AppTextStyle.style18W400,
          hintStyle: AppTextStyle.style18W400,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          prefixIconColor: Colors.grey,
          suffixIconColor: Colors.grey,
        ),
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      );
}
