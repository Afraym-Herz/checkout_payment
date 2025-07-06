import 'package:checkout_payment/core/utils/api_keys.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/views/my_cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {

  Stripe.publishableKey = ApiKeys.publishKey ;

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
// present payment sheet


// create request in post man 

/*  
1 - add url of request after word "Post" 
2 - add inputs like (amount , currency) in body section
3 - add secret key in Authorization field 
4 - NOTE : set token as bearer token and body as x-www-form 

*/

