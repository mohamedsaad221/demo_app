import 'package:flutter/material.dart';
import 'package:flutter_demo_app/home/controller/home_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
        floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.primaryColor,
            elevation: 0.0,
            onPressed: () {},
            child: const Icon(Icons.shopping_cart_rounded)),
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
                                : AppColors.blackColor,
                            size: 28,
                          ),
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
                            Icons.notifications,
                            color: controller.currentTab == 1
                                ? AppColors.primaryColor
                                : AppColors.blackColor,
                          ),
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
                                : AppColors.blackColor,
                          ),
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
                                : AppColors.blackColor,
                            size: 28,
                          ),
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
