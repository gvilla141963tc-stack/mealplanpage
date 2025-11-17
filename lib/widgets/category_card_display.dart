import 'package:flutter/material.dart';
import 'package:mealplanner/models/category_data.dart';
import 'package:mealplanner/widgets/category_card.dart';

class CategoryCardDisplay extends StatelessWidget {
  CategoryCardDisplay({super.key});

  final List<CategoryData> categories = [
    CategoryData(categoryName: 'Salad', iconPath: 'assets/icons/plate.svg'),
    CategoryData(categoryName: 'Cake', iconPath: 'assets/icons/pancakes.svg'),
    CategoryData(categoryName: 'Pie', iconPath: 'assets/icons/pie.svg'),
    CategoryData(categoryName: 'Smoothie', iconPath: 'assets/icons/orange-snacks.svg'),  
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder( 
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) => CategoryCard( category: categories[index], index: index),
    );
  }
}
