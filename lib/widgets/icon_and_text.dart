import 'package:ecommerceapp/utils/dimensions.dart';
import 'package:ecommerceapp/widgets/small_text.dart';
import 'package:flutter/material.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconAndTextWidget(
      {super.key,
      required this.icon,
      required this.text,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,size: Dimensions.iconSize24,),
        const SizedBox(width: 5,),
        SmallText(text: text)
      ],
    );
  }
}
