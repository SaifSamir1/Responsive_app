



import 'package:flutter/material.dart';

import 'all_expenses_and_my_card_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: AllExpensesAndMyCardSection(),
    );
  }
}
