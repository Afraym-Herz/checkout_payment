import 'package:checkout_payment/core/errors/faliure.dart';
import 'package:checkout_payment/core/utils/stripe_services.dart';
import 'package:checkout_payment/features/checkout_feature/data/models/payment_intent_model_input.dart';
import 'package:checkout_payment/features/checkout_feature/data/repos/checkout_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  @override
  Future<Either<Faliure, void>> makePayment({
    required PaymentIntentModelInput paymentIntentModelInput,
  }) async {
    try {
      final StripeServices stripeServices = StripeServices();
      await stripeServices.makePayment(
        paymentIntentModelInput: paymentIntentModelInput,
      );
      return right(null);
    } on StripeException catch (e) {
      return left(ServerFaliure(errMessage: e.error.message ?? 'oops there was an error' ));
    } on Exception catch (e) {
      return left(ServerFaliure(errMessage: e.toString()));
    }
  }
}
