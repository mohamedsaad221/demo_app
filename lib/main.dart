import 'package:flutter/material.dart';
import 'package:flutter_demo_app/home/shared/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'home/shared/style/app_theme.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => ScreenUtilInit(
        designSize: orientation == Orientation.portrait
            ? const Size(375, 812)
            : const Size(812, 375),
        builder: (context, child) => GetMaterialApp(
            theme: AppTheme.lightTheme,
            debugShowCheckedModeBanner: false,
            home: const CustomBottomNavBar()),
      ),
    );
  }
}
