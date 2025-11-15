import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MealPlanPage extends StatelessWidget {
  const MealPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          SizedBox(height: 16),
          SearchBox(),
          
        ]
      ));
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.grey.withAlpha(50),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: SvgPicture.asset('assets/icons/Arrow - Left 2.svg', height: 20),
            onPressed: () {},
          ),
        ),
      
        title: Text(
          'Breakfast',
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      
        actions: [
          Container(
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.grey.withAlpha(50),
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: SvgPicture.asset('assets/icons/dots.svg', height: 6),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22),
      padding: EdgeInsets.symmetric(horizontal: 26),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(10),
            spreadRadius: 0.6,
            blurRadius:  0.6,
            offset: Offset(0, 4)
          )
        ]
      ),
      child: Row(
        children: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/Search.svg'),
            onPressed: () {}
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Sarch Pancakes',
                border: InputBorder.none
              ),
            ), 
          ),

          IconButton(
            icon: SvgPicture.asset('assets/icons/Filter.svg'),
            onPressed: () {},)
        ],
      ),
    );
  }
}
