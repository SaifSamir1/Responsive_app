import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,this.imageBackGroundColor,this.imageColor});

  final String image;
  final Color? imageBackGroundColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(MediaQuery.sizeOf(context).width < 800 ? 0 : 16),
                decoration: ShapeDecoration(
                  color: imageBackGroundColor ?? const Color(0xFFFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: imageColor == null ? const Color(0xFF064061) : Colors.white,
        ),
      ],
    );
  }
}
