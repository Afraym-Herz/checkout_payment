import 'dart:developer';

import 'package:checkout_payment/features/checkout_feature/data/models/payment_intent_model_input.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/manager/cubit/stripe_payment_cubit.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/views/thank_you_screen.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StripePaymentCubit, StripePaymentState>(
      listener: (context, state) {
        if (state is StripePaymentSuccess) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const ThankYouScreen()),
          );
        }
        if (state is StripePaymentFailure) {
          Navigator.of(context).pop();
          final snackBar = SnackBar(content: Text(state.errMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },

      builder: (context, state) {
        return CustomButton(
          title: title,
          isLoading: state is StripePaymentLoading ? true : false,
          onTap: () {
            BlocProvider.of<StripePaymentCubit>(context).makePayment(
              paymentIntentModelInput: PaymentIntentModelInput(
                amount: "100",
                currency: "USD",
              ),

            
            );
          },
        );
      },
    );
  }
}
