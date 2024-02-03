import 'package:flutter/material.dart';
import 'package:responsive_app5/widgets/adaptive_layout_widget.dart';

import '../widgets/dash_board_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:AdaptiveLayout(
          mobileLayout: (context) => Container(),
          tabletLayout: (context) => Container(),
          desktopLayout: (context) => const DashBoardDesktopLayout()) ,
    );
  }
}
