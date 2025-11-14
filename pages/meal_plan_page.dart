import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MealPlanPage extends StatelessWidget {
  const MealPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 16, top: 16),
          decoration: BoxDecoration(
            color: Colors.grey.withAlpha(50),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/Arrow - Left 2.svg',
              height: 20,
            ),
            onPressed: () {},
          ),
        ),
        title: Container(
          margin: EdgeInsets.only(top: 16),
          child: Text(
            'Breakfast',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        centerTitle: true,

        actions: [
          Container(
            margin: EdgeInsets.only(right: 16, top: 16),
            decoration: BoxDecoration(
              color: Colors.grey.withAlpha(50),
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: SvgPicture.asset('assets/icons/dots.svg', height: 6),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
