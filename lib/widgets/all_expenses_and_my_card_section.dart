






import 'package:flutter/material.dart';
import 'package:responsive_app5/widgets/custom_background_container.dart';
import 'package:responsive_app5/widgets/quick_invoice.dart';
import 'package:responsive_app5/widgets/transaction_history.dart';

import 'all_expenses.dart';
import 'income_section.dart';
import 'my_cards_section.dart';

class AllExpensesAndMyCardSection extends StatelessWidget {
  const AllExpensesAndMyCardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        if (MediaQuery.sizeOf(context).width > 800)
          const SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
        const SliverToBoxAdapter(child: AllExpenses()),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
        const SliverToBoxAdapter(child: QuickInvoice()),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
        const SliverToBoxAdapter(child: CustomBackGroundContainer(child: MyCardsSection())),
        const SliverToBoxAdapter(
            child: Divider(height: 40, color: Color(0xffF1F1F1))),
        const SliverToBoxAdapter(child: CustomBackGroundContainer(child: TransactionHistory())),
        const SliverToBoxAdapter(child: SizedBox(height: 15)),
        const SliverToBoxAdapter(child: IncomeSection())
      ],
    );
  }
}
