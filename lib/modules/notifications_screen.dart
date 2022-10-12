import 'package:flutter/material.dart';
import 'package:flutter_demo_app/home/shared/components/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: CustomText(
          text: 'Notification Screen',
          textStyle: TextStyle(fontSize: 30.sp),
        )),
      ),
    );
  }
}
