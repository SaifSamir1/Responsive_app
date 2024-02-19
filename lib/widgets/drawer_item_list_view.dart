







import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransaction),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet3),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvertments),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: GestureDetector(
              onTap: ()
              {
                if(activeIndex != index) {
                  setState(() {
                    activeIndex = index;
                  });
                }
              },
              child: DrawerItem(
                drawerItemModel: items[index],
                isActive:activeIndex == index ,
              ),),
        );
      },
      itemCount: items.length,
    );
  }
}
