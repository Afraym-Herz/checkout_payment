import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, this.onTap});

  final String title ;
  final void Function()? onTap ;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(

        vertical: 24 ,
      ),
      height: 73,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff34A853) ,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Center(child: Text(title , style: Styles.style22.copyWith(color: Colors.black)  , )),
    );
  }
}