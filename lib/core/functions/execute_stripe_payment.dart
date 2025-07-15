 import 'package:checkout_payment/features/checkout_feature/data/models/payment_intent_model_input.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/manager/cubit/stripe_payment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void executeStripePayment(BuildContext context) {
    BlocProvider.of<StripePaymentCubit>(context).makePayment(
      paymentIntentModelInput: PaymentIntentModelInput(
        amount: "100",
        currency: "USD",
        customerId: 'cus_SfoscSeKHu9cPI',
      ),
    );
  }