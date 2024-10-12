import 'package:flutter/material.dart';
import 'package:food_recipe_ui/screens/btm_nav.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 428,
        height: 920,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 587,
              child: Container(
                width: 428,
                height: 300,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [
                      Color(0x00D9D9D9),
                      Color(0xD1F8F8F8),
                      Colors.white
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 117,
              top: 160,
              child: SizedBox(
                width: 166,
                height: 87,
                child: Text(
                  'Food\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: 0.06,
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 100,
              top: 220,
              child: Text(
                'Recipes',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Positioned(
              top: 300,
              left: 97,
              child: Text(
                'Easy To Make Food',
                style: TextStyle(
                  color: Color(0xFFF8F8F8),
                  fontSize: 19,
                  fontFamily: 'Snippet',
                  fontWeight: FontWeight.w200,
                  height: 0,
                  letterSpacing: 0.02,
                ),
              ),
            ),
            Positioned(
              top: 650,
              left: 80,
              child: SizedBox(
                width: 237,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD89651),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BotttomNav()),
                      );
                    },
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: 0.02,
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
