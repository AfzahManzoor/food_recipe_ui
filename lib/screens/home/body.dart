import 'package:flutter/material.dart';
import 'package:food_recipe_ui/constant.dart';
import 'package:food_recipe_ui/screens/home/components/my_container.dart';
import 'package:food_recipe_ui/screens/home/components/my_items.dart';

import 'package:food_recipe_ui/screens/home/components/search_btn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Let’s Cooking',
                  style: headingStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Searchbtn(),
                Row(
                  children: [
                    const Text(
                      'Category',
                      style: catStyle,
                    ),
                    const Spacer(),
                    TextButton(
                      child: const Text(
                        'View all',
                        style: viewStyle,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const MyContainer(),
                const SizedBox(
                  height: 10,
                ),
                const MyItems(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
