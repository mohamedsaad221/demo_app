import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/cart_model.dart';

class CartController extends GetxController {
  List<CartModel> cartList = [
    CartModel(
        id: 1,
        color: const Color(0xffF9BDAD),
        name: 'Turkish Steak',
        description: '173 Grams',
        price: 25,
        totalPrice: '44',
        quantity: 1),
    CartModel(
        id: 2,
        color: const Color(0xffB0EAFD),
        name: 'Salmon',
        description: '2 Serving',
        price: 30,
        totalPrice: '44',
        quantity: 1),
    CartModel(
        id: 3,
        color: const Color(0xffFF9DC2),
        name: 'Red Juice',
        description: '1 Bottle',
        price: 25,
        totalPrice: '44',
        quantity: 1),
    CartModel(
      id: 4,
      color: const Color(0xffCCB8FF),
      name: 'Cola',
      description: '1 Bottle',
      price: 11,
      totalPrice: '44',
      quantity: 1,
    ),
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getTotalPrice();
  }

  int totalPrice = 0;
  //int quantity = 1;

  increaseQuantity(int index) async {
    cartList[index].quantity = cartList[index].quantity + 1;
    totalPrice += cartList[index].price;

    update();
  }

  decreaseQuantity(int index) async {
    if (cartList[index].quantity == 1) {
      return 1;
    }
    cartList[index].quantity = cartList[index].quantity - 1;
    totalPrice -= cartList[index].price;
    update();
  }

  getTotalPrice() {
    totalPrice = 0;
    for (var product in cartList) {
      totalPrice * product.price;
      totalPrice += product.price * product.quantity;
    }
    log('total price: $totalPrice}');
  }
}
