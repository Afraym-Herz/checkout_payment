import 'package:checkout_payment/features/presentation/views/widgets/customAppBar.dart';
import 'package:checkout_payment/features/presentation/views/widgets/payment_view_body.dart';
import 'package:flutter/material.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Payment Details'),
      body: const PaymentViewBody(),
    );
  }
}