import 'package:flutter/material.dart';

class CustomDashsList extends StatelessWidget {
  const CustomDashsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        30,
        (index) => Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Container(height: 2, color: const Color(0xffB8B8B8)),
          ),
        ),
      ),
    );
  }
}
