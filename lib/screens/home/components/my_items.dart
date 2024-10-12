import 'package:flutter/material.dart';

import '../../../constant.dart';

class MyItems extends StatefulWidget {
  const MyItems({super.key});

  @override
  State<MyItems> createState() => _MyCategoryState();
}

class _MyCategoryState extends State<MyItems> {
  final List<String> rating = ['220', '102', '543'];

  final List<Map<String, dynamic>> items = [
    {
      'title': 'Fried chicken',
      'subtitle': 'By Siren',
      'image': 'assets/images/img1.png',
    },
    {
      'title': 'Chili meatball with egg ',
      'subtitle': 'By Zid_Q',
      'image': 'assets/images/img3.png',
    },
    {
      'title': 'Sweet and sour crab',
      'subtitle': 'By Zid_Q',
      'image': 'assets/images/img2.png',
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
              height: 230,
              child: Card(
                elevation: 4,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      height: 150,
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
                        spacing: 8,
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
