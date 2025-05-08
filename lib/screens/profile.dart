import 'package:flutter/material.dart';
import 'package:notely/widgets/notely_app_bar.dart';

import '../widgets/profile_images.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarNotely(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            ProfileImages(
              name: 'Laysa Santiago Alfredo',
            ),
            Text('Name User'),
            Text('Mail User'),
          ],
        ),
      ),
    );
  }
}
