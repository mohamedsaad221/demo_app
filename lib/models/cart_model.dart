import 'package:flutter/material.dart';

class CartModel {
  final int id;
  final Color color;
  final String name;
  final String description;
  final int price;
  late int quantity;
  final String totalPrice;

  CartModel(
      {required this.id,
      required this.color,
      required this.name,
      required this.description,
      required this.price,
      required this.quantity,
      required this.totalPrice});
}
