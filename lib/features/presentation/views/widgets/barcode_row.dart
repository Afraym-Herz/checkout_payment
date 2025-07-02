import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BarcodeRow extends StatelessWidget {
  const BarcodeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/iconCarrier.png"),
        const Spacer(),
        GestureDetector(
          child: Container(
            width: 113,
            height: 58,

            decoration: BoxDecoration(
              color: const Color(0xffD9D9D0),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: const Color(0xff34A853)),
            ),

            child: Center(
              child: Text(
                "PAID",
                style: Styles.style24.copyWith(color: const Color(0xff34A853)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
