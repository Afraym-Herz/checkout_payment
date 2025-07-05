import 'package:flutter/material.dart';

class CheckCirculeAvatar extends StatelessWidget {
  const CheckCirculeAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Color(0xffD9D9D9),
      radius: 50,
      child: CircleAvatar(
        backgroundColor: Color(0xff34A853),
        radius: 40,
        child: Icon(Icons.check, size: 52, color: Colors.white),
      ),
    );
  }
}
