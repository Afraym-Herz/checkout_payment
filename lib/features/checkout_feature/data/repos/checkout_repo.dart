import 'package:checkout_payment/core/errors/faliure.dart';
import 'package:checkout_payment/features/checkout_feature/data/models/payment_intent_model_input.dart';
import 'package:dartz/dartz.dart';

abstract class CheckoutRepo {
 
 Future<Either<Faliure, void>> makePayment ({required PaymentIntentModelInput paymentIntentModelInput}) ;

  
}