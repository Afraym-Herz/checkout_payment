
import 'package:checkout_payment/features/presentation/views/widgets/custom_button.dart';
import 'package:checkout_payment/features/presentation/views/widgets/payment_gateway_list.dart';
import 'package:flutter/material.dart';

class PaymentGatewayMethodsBottomSheet extends StatelessWidget {
  const PaymentGatewayMethodsBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min ,
        children: [
          const PaymentGatewayList(),
          const SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.symmetric( horizontal:  8.0 , vertical: 8 ),
            child: CustomButton(title: "Continue", onTap: (){}),
          ) ,
          
        ],
      ),
    );
  }
}
