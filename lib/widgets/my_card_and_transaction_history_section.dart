import 'package:flutter/material.dart';
import 'package:responsive_app5/widgets/transaction_history.dart';

import 'custom_background_container.dart';
import 'income_section.dart';
import 'my_cards_section.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        if (MediaQuery.sizeOf(context).width > 800)
          const SizedBox(height: 40,),
        const Expanded(
          child: CustomBackGroundContainer(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: MyCardsSection(),
                ),
                SliverToBoxAdapter(
                  child: Divider(
                    height: 40,
                    color: Color(0xffF1F1F1),
                  ),
                ),
                SliverToBoxAdapter(
                  child: TransactionHistory(),
                ),
                SliverToBoxAdapter(
                  child: IncomeSection(),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
