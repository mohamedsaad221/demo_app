import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_demo_app/modules/home_layout.dart';
import 'package:get/get.dart';

import '../../modules/cart_screen.dart';
import '../../modules/fav_screen.dart';
import '../../modules/notifications_screen.dart';
import '../models/offers_model.dart';

class HomeController extends GetxController {
  int currentTab = 0;
  Widget currentScreen = const HomeScreen();
  final PageStorageBucket bucket = PageStorageBucket();

  // List<Widget> screens = [
  //   const HomeScreen(),
  //   const NotificationScreen(),
  //   const FavScreen(),
  //   const CartScreen()
  // ];

  Future<void> changeIndex(int index) async {
    if (index == 0) {
      currentScreen = const HomeScreen();
      currentTab = index;
      log(currentTab.toString());
      update();
    }
    if (index == 1) {
      currentScreen = const NewsScreen();
      currentTab = index;
      log(currentTab.toString());
      update();
    }
    if (index == 2) {
      currentScreen = const FavScreen();
      currentTab = index;
      log(currentTab.toString());
      update();
    }
    if (index == 3) {
      //await getLabProfile();
      currentScreen = const CartScreen();
      currentTab = index;
      log(currentTab.toString());
      update();
    }
  }

  Map<int, bool> favouriteMap = {};

  List<OffersModel> offers = [
    OffersModel(
      id: 1,
      name: 'Summer Sun Ice Cream Pack',
      quantity: 'Pisces 5',
      time: '15 Minutes Away',
      price: '\$ 12',
      color: Color(0xffFBEDD8),
      oldPrice: '\$ 18',
      isFav: false,
    ),
    OffersModel(
      id: 2,
      name: 'Summer Sun Ice Cream Pack',
      quantity: 'Pisces 5',
      time: '15 Minutes Away',
      price: '\$ 12',
      color: Color(0xffCDF5E7),
      oldPrice: '\$ 18',
      isFav: true,
    ),
    OffersModel(
      id: 3,
      name: 'Summer Sun Ice Cream Pack',
      quantity: 'Pisces 10',
      time: '20 Minutes Away',
      price: '\$ 15',
      color: Color(0xffFBEDD8),
      oldPrice: '\$ 18',
      isFav: false,
    ),
    OffersModel(
      id: 4,
      name: 'Summer Sun Ice Cream Pack',
      quantity: 'Pisces 15',
      time: '25 Minutes Away',
      price: '\$ 20',
      color: Color(0xffCDF5E7),
      oldPrice: '\$ 25',
      isFav: true,
    ),
  ];

  @override
  void onInit() {
    super.onInit();

    for (var offer in offers) {
      favouriteMap.addAll({offer.id: offer.isFav});
    }

    log('favouriteMap: ${favouriteMap.length}');
  }

  void onClickFav({
    required int favId,
  }) {
    favouriteMap[favId] = !favouriteMap[favId]!;

    update();
  }
}
