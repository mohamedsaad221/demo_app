import 'package:flutter/material.dart';
import 'package:flutter_demo_app/home/shared/components/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: CustomText(
          text: 'Fav Screen',
          textStyle: TextStyle(fontSize: 30.sp),
        )),
      ),
    );
  }
}
