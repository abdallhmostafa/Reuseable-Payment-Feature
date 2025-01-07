import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_feature/core/api/api_keys.dart';
import 'package:payment_feature/core/api/api_service.dart';
import 'package:payment_feature/features/checkout/data/model/payment_intent_input_model.dart';
import 'package:payment_feature/features/checkout/data/model/payment_intent_model.dart';

class StripeServices {
  final ApiService _apiService;

  StripeServices(this._apiService);

  Future<PaymentIntentModel> _createPaymentIntent(
      {required PaymentIntentInputModel input}) async {
    final response = await _apiService.post(
      token: ApiKeys.secretKey,
      url: 'payment_intents',
      body: input.toJson(),
    );
    return PaymentIntentModel.fromJson(response.data);
  }

  Future<void> initPaymentSheet(
      {required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: 'Abdallh Mostafa',
      ),
    );
  }

  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment({required PaymentIntentInputModel input}) async {
    final paymentIntent = await _createPaymentIntent(input: input);
    await initPaymentSheet(
        paymentIntentClientSecret: paymentIntent.clientSecret ?? '');
    await displayPaymentSheet();
  }
}
