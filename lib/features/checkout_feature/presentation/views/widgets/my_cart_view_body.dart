import 'package:checkout_payment/core/utils/styles.dart';
import 'package:checkout_payment/features/checkout_feature/data/repos/checkout_repo_impl.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/manager/cubit/stripe_payment_cubit.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/views/widgets/custom_button.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/views/widgets/order_info_item.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/views/widgets/payment_gateway_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(child: Image.asset('assets/images/basketProduct.png')),
          const Column(
            children: [
              OrderInfoItem(
                productName: "Order Subtotal",
                titleStyle: Styles.style18,
                subTitle: r'$42.97',
                subTitleStyle: Styles.style18,
              ),
              SizedBox(height: 3),
              OrderInfoItem(
                productName: "Discount",
                titleStyle: Styles.style18,
                subTitle: r'$0',
                subTitleStyle: Styles.style18,
              ),
              SizedBox(height: 3),
              OrderInfoItem(
                productName: 'Shipping',
                titleStyle: Styles.style18,
                subTitle: r'$8',
                subTitleStyle: Styles.style18,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  color: Color(0xffC7C7C7),
                  thickness: 2,
                  height: 34,
                ),
              ),
              OrderInfoItem(
                productName: "Total",
                titleStyle: Styles.style24,
                subTitle: r"$50.97",
                subTitleStyle: Styles.style24,
              ),
            ],
          ),
          const SizedBox(height: 16),
          CustomButton(
            title: 'Complete Payment',
            onTap: () {
              //  Navigator.of(context).push( MaterialPageRoute(builder: (context) {return const PaymentView();}),);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => PaypalCheckoutView(
                    sandboxMode: true,
                    clientId: "",
                    secretKey: "",
                    transactions: const [
                      {
                        "amount": {
                          "total": "70",
                          "currency": "USD",
                          "details": {
                            "subtotal": "70",
                            "shipping": "0",
                            "shipping_discount": 0,
                          },
                        },
                        "description": "The payment transaction description.",

                        "item_list": {
                          "items": [
                            {
                              "name": "Apple",
                              "quantity": 4,
                              "price": "5",
                              "currency": "USD",
                            },
                            {
                              "name": "Pineapple",
                              "quantity": 5,
                              "price": "10",
                              "currency": "USD",
                            },
                          ],
                        },
                      },
                    ],
                    note: "Contact us for any questions on your order.",
                    onSuccess: (Map params) async {
                      print("onSuccess: $params");
                    },
                    onError: (error) {
                      print("onError: $error");
                      Navigator.pop(context);
                    },
                    onCancel: () {
                      print('cancelled:');
                    },
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 35),
        ],
      ),
    );
  }
}
