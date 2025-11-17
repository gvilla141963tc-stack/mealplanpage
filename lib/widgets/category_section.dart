import 'package:flutter/material.dart';
import 'package:mealplanner/widgets/category_card_display.dart';
import 'package:mealplanner/widgets/section_title.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 30),
      height: 200,
      width: double.infinity,
      child: Column(
        children: [
            SectionTitle(title: 'Categories'),
            Container(
              margin: EdgeInsets.only(top: 16),
              height: 100,
              width: double.infinity,
              child: CategoryCardDisplay(),
            )
        ],)
    );
  }
}