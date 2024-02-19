import 'package:flutter/material.dart';
import 'package:responsive_app5/widgets/custom_drawer.dart';
import 'all_expenses_and_my_card_section.dart';


class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: AllExpensesAndMyCardSection(),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
