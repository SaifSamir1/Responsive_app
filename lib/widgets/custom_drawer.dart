import 'package:flutter/material.dart';
import 'package:responsive_app5/generated/assets.dart';
import 'package:responsive_app5/widgets/user_info.dart';

import '../models/drawer_item_model.dart';
import 'active_and_inActive_item.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.sizeOf(context).width * .7,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfo(
              image: Assets.lekan,
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com',
            ),
          ),
          const DrawerItemListView(),
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Expanded(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Setting system', image: Assets.imagesSetting2),
                  ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Logout account', image: Assets.imagesLogout),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
