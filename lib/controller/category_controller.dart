import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/category_model.dart';

class CategoryController extends GetxController {
  List<CategoryModel> category = [
    CategoryModel(name: 'stack', color: Color(0xffF9BDAD)),
    CategoryModel(name: 'Vegetables', color: Color(0xffFAD96D)),
    CategoryModel(name: 'Beverages', color: Color(0xffCCB8FF)),
    CategoryModel(name: 'Fish', color: Color(0xffB0EAFD)),
    CategoryModel(name: 'Juice', color: Color(0xffFF9DC2)),
  ];
}
