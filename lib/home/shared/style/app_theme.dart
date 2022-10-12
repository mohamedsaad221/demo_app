import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
      toolbarHeight: 68.h,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
      titleTextStyle: TextStyle(
        fontFamily: 'Poppins',
        color: Colors.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    dialogBackgroundColor: Colors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      backgroundColor: Colors.white60,
      unselectedItemColor: AppColors.myGrey,
      elevation: 20.0,
    ),
    textTheme: TextTheme(
      button: TextStyle(fontSize: 18.sp),
      headline4: TextStyle(
        fontSize: 30.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.deepOrange,
    appBarTheme: const AppBarTheme(
      titleSpacing: 20.0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Color(0x000517ab),
        statusBarIconBrightness: Brightness.light,
      ),
      backgroundColor: Color(0x000517ab),
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    scaffoldBackgroundColor: const Color(0x000517ab),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.deepOrange,
      unselectedItemColor: Colors.grey,
      backgroundColor: Color(0x000517ab),
      elevation: 20.0,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
  );
}
