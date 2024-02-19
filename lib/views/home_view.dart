import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_app5/widgets/adaptive_layout_widget.dart';
import 'package:responsive_app5/widgets/custom_drawer.dart';
import 'package:responsive_app5/widgets/dash_board_mobile_layout.dart';

import '../widgets/dash_board_desktop_layout.dart';
import '../widgets/dash_board_tablet_layout.dart';
import '../widgets/size_config.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    SizeConfig.init(context);
    return Scaffold(
      key: key,
      appBar: SizeConfig.width < SizeConfig.tablet ? AppBar(
        backgroundColor: const Color(0xffF7F9FA),
        elevation: 0,
        leading: IconButton(icon:const Icon(Icons.menu),onPressed: ()
        {
          key.currentState?.openDrawer();
        },),
      ) : null,
      drawer: SizeConfig.width  < SizeConfig.tablet ? const CustomDrawer() : null,
      backgroundColor: const Color(0xffF7F9FA),
      body:AdaptiveLayout(
            mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const DashBoardTabletLayout(),
          desktopLayout: (context) => const DashBoardDesktopLayout()) ,
    );
  }
}
