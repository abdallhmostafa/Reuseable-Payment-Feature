import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_feature/core/api/api_keys.dart';
import 'package:payment_feature/core/api/api_service.dart';
import 'package:payment_feature/features/checkout/data/model/ephemeral_key_model.dart';
import 'package:payment_feature/features/checkout/data/model/init_payment_sheet_model.dart';
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
      {required InitPaymentSheetModel initPaymentSheetModel}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret:
            initPaymentSheetModel.paymentIntentClientSecret,
        customerEphemeralKeySecret:
            initPaymentSheetModel.customerEphemeralKeySecret,
        customerId: initPaymentSheetModel.customerId,
        merchantDisplayName: 'Abdallh Mostafa',
      ),
    );
  }

  Future<EphemeralKeyModel> _createEphemeralKey(
      {required String customerId}) async {
    final response = await _apiService.post(
      headers: {
        'Stripe-Version': '2024-12-18.acacia',
        'Authorization': 'Bearer ${ApiKeys.secretKey}'
      },
      url: 'ephemeral_keys',
      body: {'customer': customerId},
    );
    return EphemeralKeyModel.fromJson(response.data);
  }

  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment({required PaymentIntentInputModel input}) async {
    final paymentIntent = await _createPaymentIntent(input: input);
    final initPaymentSheetModel = await _createEphemeralKey(
      customerId: paymentIntent.customer ?? '',
    );
    await initPaymentSheet(
        initPaymentSheetModel: InitPaymentSheetModel(
      customerId: paymentIntent.customer ?? '',
      paymentIntentClientSecret: paymentIntent.clientSecret ?? '',
      customerEphemeralKeySecret: initPaymentSheetModel.secret ?? '',
    ));
    await displayPaymentSheet();
  }
}
