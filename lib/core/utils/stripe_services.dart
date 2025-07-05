import 'package:checkout_payment/features/checkout_feature/data/models/payment_intent_model_input.dart';
import 'package:dio/dio.dart';

class StripeServices {
  final Dio dio = Dio();

  Future<Response> post ({
    required String url,
    required body,
    required String token,
    String? contentType,
  }) async {
    var response = await dio.post(
      url,
      data: body,
      options: Options(
        contentType: contentType,
        headers: {"Authorization": "Bearer $token"},
      ),
    );
    return response ;
  }
}
