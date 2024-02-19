






import 'package:flutter/material.dart';
import 'package:responsive_app5/widgets/dots_indicator.dart';

import '../utils/app_style.dart';
import 'my_card_bage_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({
    super.key,
  });

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {

  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card',style: AppStyles.styleSemiBold20(context),),
        const SizedBox(height: 20,),
        MyCardsPageView(pageController: pageController,),
        const SizedBox(height: 19,),
        DotsIndicator(currentIndex: currentPageIndex,),
      ],
    );
  }
}
