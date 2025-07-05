import 'package:checkout_payment/features/checkout_feature/presentation/views/widgets/customAppBar.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/views/widgets/thank_you_screen_body.dart';
import 'package:flutter/material.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: ''),
      body: Transform.translate(
        offset: const Offset(0, -64),
        child: const ThankYouScreenBody(),
      ),
    );
  }
}
