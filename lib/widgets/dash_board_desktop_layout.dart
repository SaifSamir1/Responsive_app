import 'package:flutter/material.dart';
import 'package:responsive_app5/widgets/custom_drawer.dart';
import 'all_expense_section.dart';
import 'my_card_and_transaction_history_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 24),
        Expanded(
          flex: 3,
          child: AllExpensesSection(),
        ),
        SizedBox(width: 24),
        Expanded(
            flex: 2,
            child:MyCardAndTransactionHistorySection()),
      ],
    );
  }
}

