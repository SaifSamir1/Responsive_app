import 'package:flutter/material.dart';
import 'package:responsive_app5/widgets/user_info.dart';

import '../models/latest_transaction_item_model.dart';

class LatestTransactionItem extends StatelessWidget {
  const LatestTransactionItem(
      {super.key, required this.latestTransactionItemModel});

  final LatestTransactionItemModel latestTransactionItemModel;
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: UserInfo(
        image: latestTransactionItemModel.image,
        title: latestTransactionItemModel.title,
        subTitle: latestTransactionItemModel.subTitle,
      ),
    );
  }
}
