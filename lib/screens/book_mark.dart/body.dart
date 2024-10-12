import 'package:flutter/material.dart';
import 'package:food_recipe_ui/constant.dart';
import 'package:food_recipe_ui/screens/book_mark.dart/components/btn.dart';
import 'package:food_recipe_ui/screens/book_mark.dart/components/mycard.dart';

class BookMark extends StatefulWidget {
  const BookMark({super.key});

  @override
  State<BookMark> createState() => _BookMarkState();
}

class _BookMarkState extends State<BookMark> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                'Saved Recipe',
                style: headingStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Searchbtnn(),
              MyCategory(),
            ],
          ),
        ),
      ),
    );
  }
}
