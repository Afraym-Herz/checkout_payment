import 'package:checkout_payment/core/utils/api_keys.dart';
import 'package:checkout_payment/features/checkout_feature/data/models/amount_model/amount_model.dart';
import 'package:checkout_payment/features/checkout_feature/data/models/item_list_model/item_list_model.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/views/my_cart_view.dart';
import 'package:checkout_payment/features/checkout_feature/presentation/views/thank_you_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

void executePaypalPayment(
    BuildContext context,
    ({AmountModel amount, ItemListModel itemList}) transactionData,
  ) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => PaypalCheckoutView(
          sandboxMode: true,
          clientId: ApiKeys.clientId,
          secretKey: ApiKeys.paypalSecretKey,
          transactions: [
            {
              "amount": transactionData.amount.toJson(),
              "description": "The payment transaction description.",

              "item_list": transactionData.itemList.toJson(),
            },
          ],
          note: "Contact us for any questions on your order.",
          onSuccess: (Map params) async {
            print("onSuccess: $params");

            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const ThankYouScreen();
                },
              ),
              (route) {
                if (route.settings.name == '/') {
                  return true;
                } else {
                  return false;
                }
              },
            );
          },
          onError: (error) {
            print("onError: $error");
             Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const MyCartView();
                },
              ),
              (route) {
           return false;
              },
            );
          },
          onCancel: () {
            print('cancelled:');
          },
        ),
      ),
    );
  }