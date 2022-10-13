import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../controller/category_controller.dart';
import '../controller/home_controller.dart';
import '../generated/assets.dart';
import '../models/category_model.dart';
import '../models/offers_model.dart';
import '../shared/components/components.dart';
import '../shared/components/custom_text.dart';
import '../shared/style/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) => Scaffold(
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 120.w,
                            height: 120.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(Assets.imageLocation),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 16.w, right: 10.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.location_on_outlined,
                                        color: AppColors.whiteColor,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      CustomText(
                                        text: 'Mustafa St.',
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
                      CustomTextFormFieldSearch(
                        width: double.infinity,
                        hint: 'Search in thousands of products',
                        radius: 15.r,
                        fillColor: const Color(0xffF5F7F9),
                        filled: true,
                        type: TextInputType.text,
                        prefixIcon: const Icon(Icons.search),
                        validate: (value) {
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 160.w,
                            height: 90.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(
                                    color: AppColors.myGrey, width: 1),
                                color: AppColors.whiteColor),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 5.w),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                        color: const Color(0xffE3DDD6)),
                                    width: 60.w,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Home Address',
                                        style: TextStyle(
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Mustafa st.No:2',
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        'Street 12',
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 160.w,
                            height: 90.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(
                                    color: AppColors.myGrey, width: 1),
                                color: AppColors.whiteColor),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 5.w),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                      color: const Color(0xffE3DDD6),
                                    ),
                                    width: 60.w,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Office Address',
                                          style: TextStyle(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Axis Istanbul B2 Blak',
                                          style: TextStyle(
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          'Floor 2, Office 11',
                                          style: TextStyle(
                                            fontSize: 11.sp,
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: 'Explore By Category',
                            textStyle: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          CustomText(
                            text: 'See All (36)',
                            textStyle: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.myGrey.withOpacity(.9)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                SizedBox(
                  height: 120.h,
                  child: GetBuilder<CategoryController>(
                    init: CategoryController(),
                    builder: (controller) => ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.category.length,
                      padding: EdgeInsets.only(left: 16.w),
                      itemBuilder: (BuildContext context, int index) {
                        return buildCategory(controller.category[index]);
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        width: 12.w,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: CustomText(
                    text: 'Deals Of The Day',
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                SizedBox(
                  height: 120.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 16.w),
                    itemBuilder: (context, index) =>
                        buildOffers(controller.offers[index], controller),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 18.h,
                    ),
                    itemCount: controller.offers.length,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                  child: Container(
                    width: double.infinity,
                    height: 160.h,
                    decoration: BoxDecoration(
                        color: const Color(0xFFFEC8BD),
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Expanded(child: SizedBox()),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: 'Mega',
                                    textAlign: TextAlign.start,
                                    textStyle: TextStyle(
                                      fontSize: 18.w,
                                      color: Colors.red,
                                    ),
                                  ),
                                  CustomText(
                                    text: 'WHOPPER',
                                    textStyle: TextStyle(
                                        fontSize: 28.w,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: '\$ 17',
                                    textStyle: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.red),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  CustomText(
                                    text: '\$ 32',
                                    textStyle: TextStyle(
                                      fontSize: 16.sp,
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              CustomText(
                                text: 'Available until 24 December 2022',
                                textStyle: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCategory(CategoryModel categoryModel) => Column(
        children: [
          Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: categoryModel.color),
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomText(
            text: categoryModel.name,
          )
        ],
      );

  Widget buildOffers(OffersModel offers, HomeController controller) => Row(
        children: [
          Stack(
            children: [
              Container(
                width: 120.w,
                height: 120.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: offers.color,
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  controller.onClickFav(favId: offers.id);
                },
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColors.whiteColor,
                  child: Icon(
                    controller.favouriteMap[offers.id] == false
                        ? Icons.favorite_border
                        : Icons.favorite,
                    color: controller.favouriteMap[offers.id] == true
                        ? Colors.red
                        : AppColors.myGrey,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 12.w,
          ),
          Container(
            width: 210.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: offers.name,
                        textStyle: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomText(
                        text: offers.quantity,
                        textStyle: const TextStyle(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 18,
                      color: AppColors.myGrey,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    CustomText(
                      text: offers.time,
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400, color: AppColors.myGrey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Row(
                    children: [
                      CustomText(
                        text: offers.price,
                        textStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.red),
                      ),
                      SizedBox(
                        width: 10.h,
                      ),
                      CustomText(
                        text: offers.oldPrice,
                        textStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      );
}
// SizedBox(
// height: 120.h,
// child: ListView.separated(
// scrollDirection: Axis.horizontal,
// itemBuilder: (context, index) =>
// buildOffers(OffersController.offers[index]),
// separatorBuilder: (context, index) => SizedBox(
// width: 10.h,
// ),
// itemCount: OffersController.offers.length),
// )
