




import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'title_text_filed.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFiled(
                hintText: 'Type customer name',
                title: 'Customer name' ,
              ),
            ),
            SizedBox(width: 16,),
            Expanded(
              child: TitleTextFiled(
                hintText: 'Type customer email',
                title: 'Customer Email' ,
              ),
            ),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(
              child: TitleTextFiled(
                hintText: 'Type customer name',
                title: 'Item name' ,
              ),
            ),
            SizedBox(width: 16,),
            Expanded(
              child: TitleTextFiled(
                hintText: 'USD',
                title: 'Item mount' ,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textColor: Color(0xFF4DB7F2),
                backgourndColor: Colors.transparent,
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(),
            ),
          ],
        )
      ],
    );
  }
}
