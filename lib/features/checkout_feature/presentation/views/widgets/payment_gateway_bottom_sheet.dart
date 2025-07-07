import 'package:checkout_payment/features/checkout_feature/presentation/views/widgets/custom_button_bloc_consumer.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/views/widgets/payment_gateway_list.dart';
import 'package:flutter/material.dart';

class PaymentGatewayMethodsBottomSheet extends StatelessWidget {
  const PaymentGatewayMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentGatewayList(),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: CustomButtonBlocConsumer(title: "Continue"),
          ),
        ],
      ),
    );
  }
}
