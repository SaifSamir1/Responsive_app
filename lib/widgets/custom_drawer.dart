import 'package:flutter/material.dart';
import 'package:responsive_app5/generated/assets.dart';
import 'package:responsive_app5/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfo(
            image: Assets.lekan,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
        ],
      ),
    );
  }
}
