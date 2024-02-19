import 'package:flutter/material.dart';
import 'package:responsive_app5/widgets/all_expenses_itemas_list_view.dart';
import 'all_expenses_header.dart';
import 'custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16,),
          AllExpensesItemsListView()
        ],
      ),
    );
  }
}



