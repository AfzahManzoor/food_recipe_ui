import 'package:flutter/material.dart';
import 'package:food_recipe_ui/constant.dart';

class Profiledescription extends StatelessWidget {
  const Profiledescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 420,
      height: 250,
      child: Card(
        elevation: 4,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/img4.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const ListTile(
              title: Text(
                'Fried chicken',
                style: desStyle,
              ),

              trailing: Wrap(
                spacing: 8,
                children: <Widget>[
                  Text(
                    '220',
                    style: BtnStyle,
                  ),
                  Icon(Icons.favorite_outline, color: kPrimaryColor),
                  Icon(Icons.bookmark, color: kPrimaryColor),
                ],
              ),
              // )
            ),
          ],
        ),
      ),
    );
  }
}
