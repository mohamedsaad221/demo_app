import 'package:flutter/material.dart';
import 'package:flutter_demo_app/home/shared/components/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: CustomText(
          text: 'Cart Screen',
          textStyle: TextStyle(fontSize: 30.sp),
        )),
      ),
    );
  }
}
