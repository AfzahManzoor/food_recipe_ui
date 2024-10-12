import 'package:flutter/material.dart';
import 'package:food_recipe_ui/constant.dart';
import 'package:food_recipe_ui/screens/book_mark.dart/body.dart';
import 'package:food_recipe_ui/screens/home/body.dart';
import 'package:food_recipe_ui/screens/profile/body.dart';

class BotttomNav extends StatefulWidget {
  const BotttomNav({super.key});

  @override
  BotttomNavState createState() => BotttomNavState();
}

class BotttomNavState extends State<BotttomNav> {
  int selectedIndex = 0;
  final widgetOptions = [
    const HomeScreen(),
    const BookMark(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: Container(
        height: 70,
        width: 350,
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 236, 236, 236),
              spreadRadius: 0,
              blurRadius: 12)
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: kPrimaryColor,
            elevation: 5,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark_outline,
                  size: 30,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outlined,
                  size: 30,
                ),
                label: '',
              ),
            ],
            currentIndex: selectedIndex,
            onTap: onItemTapped,
          ),
        ),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
