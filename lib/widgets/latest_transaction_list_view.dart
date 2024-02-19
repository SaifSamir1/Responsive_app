
import 'package:flutter/cupertino.dart';
import '../generated/assets.dart';
import '../models/latest_transaction_item_model.dart';
import 'latest_transaction_item.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<LatestTransactionItemModel> items =
  [
    LatestTransactionItemModel(title: 'Madrani Andi', image:  Assets.imagesMadrani, subTitle: 'Madraniadi20@gmail'),
    LatestTransactionItemModel(title: 'Josua Nunito', image:  Assets.imagesJosua, subTitle: 'Josh Nunito@gmail.com'),
    LatestTransactionItemModel(title: 'Madrani Andi', image:  Assets.imagesMadrani, subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) {
          return LatestTransactionItem(latestTransactionItemModel: e);
        }).toList(),
      ),
    );
  }
}