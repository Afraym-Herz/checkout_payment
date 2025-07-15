import 'package:checkout_payment/core/utils/api_keys.dart';
import 'package:checkout_payment/core/utils/api_services.dart';
import 'package:checkout_payment/features/checkout_feature/data/models/ephmeral_key_model/ephmeral_key_model.dart';
import 'package:checkout_payment/features/checkout_feature/data/models/init_payment_sheet_input_model.dart';
import 'package:checkout_payment/features/checkout_feature/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:checkout_payment/features/checkout_feature/data/models/payment_intent_model_input.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeServices {
  ApiServices apiServices = ApiServices();

  Future<PaymentIntentModel> createPaymentIntent(
    PaymentIntentModelInput paymentIntentModelInput,
  ) async {
    var response = await apiServices.post(
      url: "https://api.stripe.com/v1/payment_intents",
      body: paymentIntentModelInput.toJson(),
      token: ApiKeys.secretKey,
      contentType: Headers.formUrlEncodedContentType,
    );

    return PaymentIntentModel.fromJson(response.data);
  }

   Future<EphmeralKeyModel> createEphemeralKey(
      {required String customerId}) async {
    var response = await apiServices.post(
        body: {'customer': customerId},
        contentType: Headers.formUrlEncodedContentType,
        url: 'https://api.stripe.com/v1/ephemeral_keys',
        token: ApiKeys.secretKey,
        headers: {
          'Authorization': "Bearer ${ApiKeys.secretKey}",
          'Stripe-Version': '2025-06-30',
        });

    var ephermeralKey = EphmeralKeyModel.fromJson(response.data);

    return ephermeralKey;
  }

  Future initPaymentSheet({
    required InitPaymentSheetInputModel initPaymentSheetInputModel,
  }) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: initPaymentSheetInputModel.clientSecret,
        customerEphemeralKeySecret:
            initPaymentSheetInputModel.ephemeralKeySecret,
        customerId: initPaymentSheetInputModel.customerId,
        merchantDisplayName: "Afraym Herz",
      ),
    );
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment({
    required PaymentIntentModelInput paymentIntentModelInput,
  }) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentModelInput);
    var ephmeralKeyModel = await createEphemeralKey(
      customerId: paymentIntentModelInput.customerId,
    );
    var initPaymentSheetInputModel = InitPaymentSheetInputModel(
      clientSecret: paymentIntentModel.clientSecret!,
      customerId: paymentIntentModelInput.customerId,
      ephemeralKeySecret: ephmeralKeyModel.secret!,
    );
    await initPaymentSheet(
      initPaymentSheetInputModel: initPaymentSheetInputModel,
    );
    await displayPaymentSheet();
  }
}
