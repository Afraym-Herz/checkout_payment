import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        tileColor: Colors.white,
        leading: Image.asset("assets/images/masterCardLogo.png"),
        title: const Text("Credit Card", style: Styles.style18),
        subtitle: const Text("Mastercard **78"),
      ),
    );
  }
}
