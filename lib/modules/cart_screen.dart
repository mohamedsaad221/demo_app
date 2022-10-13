import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/cart_controller.dart';
import '../generated/assets.dart';
import '../models/cart_model.dart';
import '../shared/components/custom_text.dart';
import '../shared/style/app_colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<CartController>(
        init: CartController(),
        builder: (controller) => Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(12.w),
                child: Row(
                  children: [
                    SizedBox(
                      width: 120.w,
                      height: 120.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(Assets.imageLocation),
                          Padding(
                            padding: EdgeInsets.only(top: 16.w, right: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.whiteColor,
                                  size: 18,
                                ),
                                CustomText(
                                  text: 'Oxford Street',
                                  textStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColors.whiteColor),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 16.h),
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.blackColor,
                        child: CircleAvatar(
                          backgroundColor: AppColors.whiteColor,
                          radius: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Cart',
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.sp),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    SizedBox(
                      height: 400.h,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => buildCartItem(
                            controller.cartList[index], controller, index),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 16.h,
                        ),
                        itemCount: controller.cartList.length,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCartItem(CartModel cart, CartController controller, int index) =>
      Row(
        children: [
          Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: cart.color,
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: cart.name,
                textStyle:
                    TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomText(
                text: cart.description,
                textStyle: TextStyle(fontSize: 12.sp, color: AppColors.myGrey),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomText(
                text: '\$ ${cart.price}',
                textStyle: TextStyle(fontSize: 18.sp, color: Colors.red),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  controller.decreaseQuantity(index);
                },
                child: Container(
                  width: 38.w,
                  height: 43.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.bottomCart,
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: AppColors.plusAndMin,
                  ),
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              CustomText(
                text: '${cart.quantity}',
                textStyle:
                    TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 8.w,
              ),
              InkWell(
                onTap: () {
                  controller.increaseQuantity(index);
                },
                child: Container(
                  width: 38.w,
                  height: 43.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.bottomCart,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: AppColors.plusAndMin,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
}
