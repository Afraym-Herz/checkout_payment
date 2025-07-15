import 'package:checkout_payment/features/checkout_feature/presentation/views/widgets/custom_button_bloc_consumer.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/views/widgets/payment_gateway_list.dart';
import 'package:flutter/material.dart';

class PaymentGatewayMethodsBottomSheet extends StatefulWidget {
  const PaymentGatewayMethodsBottomSheet({super.key});

  @override
  State<PaymentGatewayMethodsBottomSheet> createState() => _PaymentGatewayMethodsBottomSheetState();
}

class _PaymentGatewayMethodsBottomSheetState extends State<PaymentGatewayMethodsBottomSheet> {
  
  bool isPaypal = false ;  
  
  updatePaymentGateway ({required int activeIndex}){
    if (activeIndex == 1) {
       isPaypal = true ;
    }
    else {
      isPaypal = false ;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentGatewayList(updatePaymentGateway: updatePaymentGateway),
          const SizedBox(height: 16),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: CustomButtonBlocConsumer(title: "Continue" , isPaypal: isPaypal,),
          ),
        ],
      ),
    );
  }
}