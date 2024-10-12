import 'package:flutter/material.dart';

import '../../../constant.dart';

class MyCategory extends StatefulWidget {
  const MyCategory({super.key});

  @override
  State<MyCategory> createState() => _MyCategoryState();
}

class _MyCategoryState extends State<MyCategory> {
  final List<String> rating = ['220', '543'];

  final List<Map<String, dynamic>> items = [
    {
      'title': 'Fried chicken',
      'subtitle': 'By Siren',
      'image': 'assets/images/img1.png',
    },
    {
      'title': 'Chili meatball with egg..',
      'subtitle': 'By Zid_Q',
      'image': 'assets/images/img3.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 420,
              height: 250,
              child: Card(
                elevation: 4,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      height: 170,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            (items[index]['image']),
                          ),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        items[index]['title'],
                        style: desStyle,
                      ),
                      subtitle: Text(
                        items[index]['subtitle'],
                        style: subStyle,
                      ),
                      trailing: Wrap(
                        spacing: 6,
                        children: <Widget>[
                          Text(
                            rating[index],
                            style: BtnStyle,
                          ),
                          const Icon(Icons.favorite_outline,
                              color: kPrimaryColor),
                          const Icon(Icons.bookmark, color: kPrimaryColor),
                        ],
                      ),
                      // )
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
