import 'package:flutter/material.dart';
import 'package:mealplanner/widgets/custom_app_bar.dart';
import 'package:mealplanner/widgets/search_box.dart';

class MealPlanPage extends StatelessWidget {
  const MealPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16),
            SearchBox(),
          ]
        ),
      ));
  }
}



 


