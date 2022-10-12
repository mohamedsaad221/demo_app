import 'package:flutter/material.dart';
import 'package:flutter_demo_app/home/models/category_model.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  static List<CategoryModel> category = [
    CategoryModel(name: 'stack', color: Colors.deepOrangeAccent),
    CategoryModel(name: 'Vegetables', color: Colors.amber.shade300),
    CategoryModel(name: 'Beverages', color: Colors.blue.shade300),
    CategoryModel(name: 'Fish', color: Colors.green),
    CategoryModel(name: 'Juice', color: Colors.pink),
  ];
}
