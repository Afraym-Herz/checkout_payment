import 'package:flutter/material.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({
    super.key,
    required this.productName,
    required this.titleStyle,
    required this.subTitle,
    required this.subTitleStyle,
  });

  final String productName, subTitle;
  final TextStyle titleStyle, subTitleStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(productName, style: titleStyle),
        const Spacer(),
        Text(subTitle, style: subTitleStyle),
      ],
    );
  }
}
