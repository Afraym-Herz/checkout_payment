import 'package:checkout_payment/core/utils/styles.dart';
import 'package:checkout_payment/features/presentation/views/widgets/barcode_row.dart';
import 'package:checkout_payment/features/presentation/views/widgets/card_info_widget.dart';
import 'package:checkout_payment/features/presentation/views/widgets/order_info_item.dart';
import 'package:flutter/material.dart';

class ThankYouCardContainer extends StatelessWidget {
  const ThankYouCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffEDEDED),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 66, left: 20, right: 20),
        child: Column(
          children: [
            const Text("Thank you!", style: Styles.style25),
            const SizedBox(height: 5),
            Text("Your transaction was successful", style: Styles.style20),
            const SizedBox(height: 40),
            const OrderInfoItem(
              productName: "Date",
              titleStyle: Styles.style18,
              subTitle: '01/24/2023',
              subTitleStyle: Styles.styleBold18,
            ),
            const SizedBox(height: 20),
            const OrderInfoItem(
              productName: "Time",
              titleStyle: Styles.style18,
              subTitle: '10:15 AM',
              subTitleStyle: Styles.styleBold18,
            ),
            const SizedBox(height: 20),
            const OrderInfoItem(
              productName: "To",
              titleStyle: Styles.style18,
              subTitle: 'Sam Louis',
              subTitleStyle: Styles.styleBold18,
            ),
            const SizedBox(height: 15),
            const Divider(color: Color(0xffC7C7C7), thickness: 2, height: 60),
            const OrderInfoItem(
              productName: "Total",
              titleStyle: Styles.style24,
              subTitle: r"$50.97",
              subTitleStyle: Styles.style24,
            ),
            const SizedBox(height: 30),
            const CardInfoWidget(),
            const Spacer() ,
            const BarcodeRow(),
            SizedBox(height: (MediaQuery.of(context).size.height * .2 / 2) -29 ,),
          ],
        ),
      ),
    );
  }
}
