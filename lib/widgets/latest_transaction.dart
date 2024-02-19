import 'package:flutter/material.dart';
import '../utils/app_style.dart';
import 'latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        const SizedBox(
            height: 80,
            child: LatestTransactionListView(),
        ),
      ],
    );
  }
}
