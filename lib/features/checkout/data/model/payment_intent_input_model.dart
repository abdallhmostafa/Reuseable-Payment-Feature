class PaymentIntentInputModel {
  final String? amount;
  final String? currency;
  final String customerId;
  PaymentIntentInputModel({
    this.amount,
    this.currency,
    required this.customerId,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'amount': amount,
      'currency': currency,
      'customer': customerId,
    };
  }

  // factory PaymentIntentInputModel.fromJson(Map<String, dynamic> map) {
  //   return PaymentIntentInputModel(
  //     amount: map['amount'] != null ? map['amount'] as String : null,
  //     currency: map['currency'] != null ? map['currency'] as String : null,
  //   );
  // }
}
