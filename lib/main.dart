import 'package:checkout_payment/features/checkout_feature/presentation/views/my_cart_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: MyCartView(),
    );
  }
}

// paymentIntentObject create paymentIntent ( amount , currency )
// init paymentSheet(paymentIntentClinetSecret)
