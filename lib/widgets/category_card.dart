import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealplanner/models/category_data.dart';


class CategoryCard extends StatelessWidget {
   final CategoryData category;
   final int index;
   const CategoryCard({super.key, required this.category, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 80,
      decoration: BoxDecoration(
        gradient: CategoryData.bgColor[index % 2].withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            height: 40,
            width: 40,
            child: SvgPicture.asset(
              category.iconPath,
              width: double.infinity,
              fit: BoxFit.scaleDown,),
          ),
          Text(
            category.categoryName,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black87,
            ),
          )
        ]
      )
    );
  }
}
