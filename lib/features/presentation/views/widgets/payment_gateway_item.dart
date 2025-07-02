import 'package:flutter/material.dart';

class PaymentGatewayItem extends StatelessWidget {
  const PaymentGatewayItem({
    super.key,
    required this.imagePath,
    this.isActive = false,
  });

  final String imagePath;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 17),
      duration: const Duration(milliseconds: 300),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.50,
            color: isActive == true ? const Color(0xff34A853) : const Color.fromARGB(69, 180, 180, 183),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: [
          BoxShadow(
            blurRadius: 4,
            offset: const Offset(0, 0),
            spreadRadius: 0,
            color: isActive == true ? const Color(0xff34A853) : const Color.fromARGB(69, 180, 180, 183),
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Image.asset(imagePath, height: 24),
      ),
    );
  }
}
