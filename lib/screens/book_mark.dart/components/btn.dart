import 'package:flutter/material.dart';

class Searchbtnn extends StatelessWidget {
  const Searchbtnn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          showCursor: false,
          decoration: InputDecoration(
            hintText: 'Search recipe',
            hintStyle: const TextStyle(
              color: Color(0x7F8B8B8B),
              fontSize: 14,
              fontFamily: 'Roboto',
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(23),
            ),
            prefixIcon: const Icon(Icons.search),
          ),
        ),
      ],
    );
  }
}
