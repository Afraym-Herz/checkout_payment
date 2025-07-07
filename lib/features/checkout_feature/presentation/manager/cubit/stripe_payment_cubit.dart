import 'package:checkout_payment/features/checkout_feature/data/models/payment_intent_model_input.dart';
import 'package:checkout_payment/features/checkout_feature/data/repos/checkout_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'stripe_payment_state.dart';

class StripePaymentCubit extends Cubit<StripePaymentState> {
  StripePaymentCubit(this.checkoutRepo) : super(StripePaymentInitial());

  final CheckoutRepo checkoutRepo;

  Future makePayment({
    required PaymentIntentModelInput paymentIntentModelInput,
  }) async {
    var data = await checkoutRepo.makePayment(
      paymentIntentModelInput: paymentIntentModelInput,
    );

    data.fold(
      (l) => emit(StripePaymentFailure(errMessage: l.errMessage)),
      (r) => emit(StripePaymentSuccess()),
    );
  }
}
