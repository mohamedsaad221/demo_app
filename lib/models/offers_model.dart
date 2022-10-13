import 'package:flutter/material.dart';

class OffersModel {
  final int id;
  final String name;
  final String quantity;
  final String time;
  final String price;
  final Color color;
  final String oldPrice;
  final bool isFav;

  OffersModel({
    required this.name,
    required this.quantity,
    required this.time,
    required this.price,
    required this.color,
    required this.id,
    required this.oldPrice,
    required this.isFav,
  });
}
