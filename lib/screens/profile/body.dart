import 'package:flutter/material.dart';
import 'package:food_recipe_ui/screens/profile/components/profile_des.dart';

import '../../constant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Profile',
                  style: headingStyle,
                ),
                Icon(
                  Icons.more_vert,
                  color: kPrimary2Color,
                )
              ],
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              title: Text(
                'Shriya',
                style: headingStyle,
              ),
              subtitle: Text(
                'Tarakan, Indonesia',
                style: subStyle,
              ),
            ),
            const Text(
              '               1               347             100',
              style: BtnStyle,
            ),
            const Text(
              '                   Recipe             Like             Following',
              style: viewStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  'My Recipe',
                  style: headingStyle,
                ),
                const Spacer(),
                Container(
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kPrimaryColor,
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    label: const Text(
                      'Follow',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: const Icon(Icons.add, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
            const Profiledescription(),
          ],
        ),
      ),
    );
  }
}
