class PaymentIntentInputModel {
  final String? amount;
  final String? currency;

  PaymentIntentInputModel({
    this.amount,
    this.currency,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'amount': amount,
      'currency': currency,
    };
  }

  // factory PaymentIntentInputModel.fromJson(Map<String, dynamic> map) {
  //   return PaymentIntentInputModel(
  //     amount: map['amount'] != null ? map['amount'] as String : null,
  //     currency: map['currency'] != null ? map['currency'] as String : null,
  //   );
  // }
}
