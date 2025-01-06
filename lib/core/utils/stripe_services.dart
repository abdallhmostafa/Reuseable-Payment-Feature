import 'package:payment_feature/core/api/api_keys.dart';
import 'package:payment_feature/core/api/api_service.dart';
import 'package:payment_feature/features/checkout/model/payment_intent_input_model.dart';
import 'package:payment_feature/features/checkout/model/payment_intent_model.dart';

class StripeServices {
  final ApiService _apiService;

  StripeServices(this._apiService);

  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel input) async {
    final response = await _apiService.post(
      token: ApiKeys.secretKey,
      url: 'payment_intents',
      body: input.toJson(),
    );
    return PaymentIntentModel.fromJson(response.data);
  }
}
