import 'package:flutter/material.dart';
import 'package:food_recipe_ui/constant.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
        Container(
          width: 116,
          height: 20,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: kPrimaryColor,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: const Center(
            child: Text(
              'Trending',
              style: BtnStyle,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: InkWell(
            child: Container(
              width: 116,
              height: 20,
              decoration: ShapeDecoration(
                color: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Center(
                child: Text('New',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins-Bold',
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
            onTap: () {},
          ),
        ),
        Container(
          width: 116,
          height: 20,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(
                width: 1,
                color: kPrimaryColor,
              ),
            ),
          ),
          child: const Center(
            child: Text(
              'Populer',
              style: BtnStyle,
            ),
          ),
        ),
      ]),
    );
  }
}
