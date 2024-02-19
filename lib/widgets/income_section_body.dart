import 'package:flutter/material.dart';
import 'package:responsive_app5/widgets/size_config.dart';

import 'details_income_chart.dart';
import 'incame_chart.dart';
import 'income_detailes.dart';

class IncomSectionBody extends StatelessWidget {
  const IncomSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return width >= SizeConfig.desktop && width < 1450
        ? const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: DetailedIncomeChart(),
        )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
