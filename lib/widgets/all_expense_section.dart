





import 'package:flutter/material.dart';
import 'package:responsive_app5/widgets/quick_invoice.dart';

import 'all_expenses.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({
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
      ],
    );
  }
}
