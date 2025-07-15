import 'package:checkout_payment/features/checkout_feature/presentation/views/widgets/payment_gateway_item.dart';
import 'package:flutter/material.dart';

class PaymentGatewayList extends StatefulWidget {
  const PaymentGatewayList({super.key, required this.updatePaymentGateway });

  final Function ({required int activeIndex}) updatePaymentGateway ;

  @override
  State<PaymentGatewayList> createState() => _PaymentGatewayListState();
}

class _PaymentGatewayListState extends State<PaymentGatewayList> {
  final List<String> paymentGatewayImageList = const [
    'assets/images/blackCredit.png',
    'assets/images/paypalImage.png',
    'assets/images/applePay.png',
  ];
  int activeIndex = 0 ;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
                widget.updatePaymentGateway(activeIndex: activeIndex) ;

              }
            },
            child: PaymentGatewayItem(
              imagePath: paymentGatewayImageList[index],
              isActive: index == activeIndex,
            ),
          );
        },
        itemCount: paymentGatewayImageList.length,
      ),
    );
  }
}
