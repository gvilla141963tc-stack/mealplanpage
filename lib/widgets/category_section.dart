import 'package:flutter/material.dart';
import 'package:mealplanner/widgets/category_card_display.dart';
import 'package:mealplanner/widgets/section_title.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      height: 220,
      width: double.infinity,
      child: Column(
        children: [
            SectionTitle(title: 'Categories'),
            SizedBox(height: 16),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: CategoryCardDisplay(),
            )
        ],)
    );
  }
}