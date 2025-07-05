import 'package:checkout_payment/core/utils/api_keys.dart';
import 'package:checkout_payment/core/utils/api_services.dart';
import 'package:checkout_payment/features/checkout_feature/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:checkout_payment/features/checkout_feature/data/models/payment_intent_model_input.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeServices {
  ApiServices apiServices = ApiServices();

  Future<PaymentIntentModel> createPaymentIntent(
    PaymentIntentModelInput paymentIntentModelInput,
  ) async {
    var response = await apiServices.post(
      url: "https://api.stripe.com/v1/payment_intents",
      body: paymentIntentModelInput.toJson() ,
      token: ApiKeys.secretKey,
    );

    return PaymentIntentModel.fromJson(response.data);
  }

  Future initPaymentSheet ({required String paymentIntentClientSecret}) async {
    Stripe.instance.initPaymentSheet(paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: paymentIntentClientSecret ,
      merchantDisplayName: "Afraym Herz" ,
    ));
  }

  Future displayPaymentSheet () async {
    Stripe.instance.presentPaymentSheet() ;
  }

  Future makePayment ({required PaymentIntentModelInput paymentIntentModelInput}) async {
    
    var paymentIntentModel = await createPaymentIntent(paymentIntentModelInput);
    await initPaymentSheet(paymentIntentClientSecret: paymentIntentModel.clientSecret! );
    await displayPaymentSheet() ;
    
  }

}
