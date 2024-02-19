import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app5/utils/app_style.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key, required this.image, required this.title, required this.subTitle});

  final String image , title , subTitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(image),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              subTitle,
              style: AppStyles.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
