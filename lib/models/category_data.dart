import 'package:flutter/material.dart';

class CategoryData {
   final String categoryName;
   final String iconPath;

  static List<LinearGradient> bgColor = [
    LinearGradient(colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)]),
    LinearGradient(colors: [Color(0xFFC58BF2), Color(0xFFEEA4CE)]) ,
    ]
  ;

  CategoryData({required this.categoryName, required this.iconPath,});
}
