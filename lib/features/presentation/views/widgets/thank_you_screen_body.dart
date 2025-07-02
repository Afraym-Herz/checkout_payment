import 'package:checkout_payment/core/utils/styles.dart';
import 'package:checkout_payment/features/presentation/views/widgets/check_circule_avatar.dart';
import 'package:checkout_payment/features/presentation/views/widgets/custom_dashs_list.dart';
import 'package:checkout_payment/features/presentation/views/widgets/order_info_item.dart';
import 'package:checkout_payment/features/presentation/views/widgets/thank_you_card_container.dart';
import 'package:flutter/material.dart';

class ThankYouScreenBody extends StatelessWidget {
  const ThankYouScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  32, vertical: 64),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const ThankYouCardContainer(),
             Positioned(
              top: -35,
              left: 0,
              child: Image.asset('assets/images/arrow.png'),
            ),
            const Positioned(
              top: -50,
              left: 0,
              right: 0,
              child: CheckCirculeAvatar(),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * .2 + 20,
              left: 28,
              right: 28,
              child: const CustomDashsList(),
            ),
      
            Positioned(
              bottom: MediaQuery.of(context).size.height * .2,
              left: -20,
              child: const CircleAvatar(backgroundColor: Colors.white),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * .2,
              right: -20,
              child: const CircleAvatar(backgroundColor: Colors.white),
            ),


          ],
        ),
      ),
    );
  }
}
