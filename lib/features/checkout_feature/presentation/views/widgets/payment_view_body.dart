import 'package:checkout_payment/features/checkout_feature/presentation/views/widgets/custom_button.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/views/widgets/custom_credit_card.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/views/widgets/payment_gateway_list.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/views/thank_you_screen.dart';
import 'package:flutter/material.dart';

class PaymentViewBody extends StatefulWidget {
  const PaymentViewBody({super.key});

  @override
  State<PaymentViewBody> createState() => _PaymentViewBodyState();
}

class _PaymentViewBodyState extends State<PaymentViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: PaymentGatewayList()),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                title: "Pay",
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ThankYouScreen(),
                      ),
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
