class InitPaymentSheetModel {
  final String paymentIntentClientSecret;
  final String customerEphemeralKeySecret;
  final String customerId;

  InitPaymentSheetModel(
      {required this.paymentIntentClientSecret,
      required this.customerEphemeralKeySecret,
      required this.customerId});
}
