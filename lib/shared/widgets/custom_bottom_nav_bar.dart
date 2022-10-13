import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/cart_controller.dart';
import '../../controller/home_controller.dart';
import '../components/custom_text.dart';
import '../style/app_colors.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: PageStorage(
          bucket: controller.bucket,
          child: controller.currentScreen,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: GetBuilder<CartController>(
          init: CartController(),
          builder: (controller) => CircleAvatar(
            radius: 38,
            backgroundColor: AppColors.primaryColor,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 22.h),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    size: 32,
                    color: AppColors.whiteColor,
                  ),
                ),
                CustomText(
                  text: '\$ ${controller.totalPrice}',
                  textStyle:
                      TextStyle(fontSize: 16.sp, color: AppColors.whiteColor),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 0,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 28.w,
                      onPressed: () async {
                        await controller.changeIndex(0);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.home,
                            color: controller.currentTab == 0
                                ? AppColors.primaryColor
                                : AppColors.myGrey,
                            size: 35,
                          ),
                          CustomText(
                            text: 'Grocery',
                            textStyle: TextStyle(
                              fontSize: 14.sp,
                              color: controller.currentTab == 0
                                  ? AppColors.primaryColor
                                  : AppColors.myGrey,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 28.w,
                      onPressed: () async {
                        await controller.changeIndex(1);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.notifications_none_outlined,
                            color: controller.currentTab == 1
                                ? AppColors.primaryColor
                                : AppColors.myGrey,
                            size: 35,
                          ),
                          CustomText(
                            text: 'News',
                            textStyle: TextStyle(
                              fontSize: 14.sp,
                              color: controller.currentTab == 1
                                  ? AppColors.primaryColor
                                  : AppColors.myGrey,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),

                // Right Tab bar icons

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 28.w,
                      onPressed: () async {
                        await controller.changeIndex(2);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.favorite_border,
                            color: controller.currentTab == 2
                                ? AppColors.primaryColor
                                : AppColors.myGrey,
                            size: 35,
                          ),
                          CustomText(
                            text: 'Favorites',
                            textStyle: TextStyle(
                              fontSize: 14.sp,
                              color: controller.currentTab == 2
                                  ? AppColors.primaryColor
                                  : AppColors.myGrey,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 28.w,
                      onPressed: () async {
                        await controller.changeIndex(3);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.shopping_bag_rounded,
                            color: controller.currentTab == 3
                                ? AppColors.primaryColor
                                : AppColors.myGrey,
                            size: 35,
                          ),
                          CustomText(
                            text: 'Cart',
                            textStyle: TextStyle(
                              fontSize: 14.sp,
                              color: controller.currentTab == 3
                                  ? AppColors.primaryColor
                                  : AppColors.myGrey,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
