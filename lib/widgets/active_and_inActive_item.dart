

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../models/drawer_item_model.dart';
import '../utils/app_style.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItemModel.title,
          style: AppStyles.styleMedium16(context),
        ),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Align(
        alignment: Alignment.centerLeft ,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            drawerItemModel.title,
            style: AppStyles.styleBold16(context),
          ),
        ),
      ),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}