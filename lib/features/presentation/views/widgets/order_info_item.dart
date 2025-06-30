import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.productName,required this.titleStyle, required this.price,  required this.priceStyle});

  final String productName , price ;
  final TextStyle titleStyle , priceStyle ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(productName , style: titleStyle,),
        Spacer() ,
        Text(price , style: priceStyle,) ,
      ],
    );
  }
}