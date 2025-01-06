class PaymentIntentModel {
  PaymentIntentModel({
    required this.id,
    required this.object,
    required this.amount,
    required this.amountCapturable,
    required this.amountDetails,
    required this.amountReceived,
    required this.application,
    required this.applicationFeeAmount,
    required this.automaticPaymentMethods,
    required this.canceledAt,
    required this.cancellationReason,
    required this.captureMethod,
    required this.clientSecret,
    required this.confirmationMethod,
    required this.created,
    required this.currency,
    required this.customer,
    required this.description,
    required this.invoice,
    required this.lastPaymentError,
    required this.latestCharge,
    required this.livemode,
    required this.metadata,
    required this.nextAction,
    required this.onBehalfOf,
    required this.paymentMethod,
    required this.paymentMethodOptions,
    required this.paymentMethodTypes,
    required this.processing,
    required this.receiptEmail,
    required this.review,
    required this.setupFutureUsage,
    required this.shipping,
    required this.source,
    required this.statementDescriptor,
    required this.statementDescriptorSuffix,
    required this.status,
    required this.transferData,
    required this.transferGroup,
  });

  final String? id;
  final String? object;
  final int? amount;
  final int? amountCapturable;
  final AmountDetails? amountDetails;
  final int? amountReceived;
  final dynamic application;
  final dynamic applicationFeeAmount;
  final AutomaticPaymentMethods? automaticPaymentMethods;
  final dynamic canceledAt;
  final dynamic cancellationReason;
  final String? captureMethod;
  final String? clientSecret;
  final String? confirmationMethod;
  final int? created;
  final String? currency;
  final dynamic customer;
  final dynamic description;
  final dynamic invoice;
  final dynamic lastPaymentError;
  final dynamic latestCharge;
  final bool? livemode;
  final Metadata? metadata;
  final dynamic nextAction;
  final dynamic onBehalfOf;
  final dynamic paymentMethod;
  final PaymentMethodOptions? paymentMethodOptions;
  final List<String> paymentMethodTypes;
  final dynamic processing;
  final dynamic receiptEmail;
  final dynamic review;
  final dynamic setupFutureUsage;
  final dynamic shipping;
  final dynamic source;
  final dynamic statementDescriptor;
  final dynamic statementDescriptorSuffix;
  final String? status;
  final dynamic transferData;
  final dynamic transferGroup;

  factory PaymentIntentModel.fromJson(Map<String, dynamic> json) {
    return PaymentIntentModel(
      id: json["id"],
      object: json["object"],
      amount: json["amount"],
      amountCapturable: json["amount_capturable"],
      amountDetails: json["amount_details"] == null
          ? null
          : AmountDetails.fromJson(json["amount_details"]),
      amountReceived: json["amount_received"],
      application: json["application"],
      applicationFeeAmount: json["application_fee_amount"],
      automaticPaymentMethods: json["automatic_payment_methods"] == null
          ? null
          : AutomaticPaymentMethods.fromJson(json["automatic_payment_methods"]),
      canceledAt: json["canceled_at"],
      cancellationReason: json["cancellation_reason"],
      captureMethod: json["capture_method"],
      clientSecret: json["client_secret"],
      confirmationMethod: json["confirmation_method"],
      created: json["created"],
      currency: json["currency"],
      customer: json["customer"],
      description: json["description"],
      invoice: json["invoice"],
      lastPaymentError: json["last_payment_error"],
      latestCharge: json["latest_charge"],
      livemode: json["livemode"],
      metadata:
          json["metadata"] == null ? null : Metadata.fromJson(json["metadata"]),
      nextAction: json["next_action"],
      onBehalfOf: json["on_behalf_of"],
      paymentMethod: json["payment_method"],
      paymentMethodOptions: json["payment_method_options"] == null
          ? null
          : PaymentMethodOptions.fromJson(json["payment_method_options"]),
      paymentMethodTypes: json["payment_method_types"] == null
          ? []
          : List<String>.from(json["payment_method_types"]!.map((x) => x)),
      processing: json["processing"],
      receiptEmail: json["receipt_email"],
      review: json["review"],
      setupFutureUsage: json["setup_future_usage"],
      shipping: json["shipping"],
      source: json["source"],
      statementDescriptor: json["statement_descriptor"],
      statementDescriptorSuffix: json["statement_descriptor_suffix"],
      status: json["status"],
      transferData: json["transfer_data"],
      transferGroup: json["transfer_group"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "object": object,
        "amount": amount,
        "amount_capturable": amountCapturable,
        "amount_details": amountDetails?.toJson(),
        "amount_received": amountReceived,
        "application": application,
        "application_fee_amount": applicationFeeAmount,
        "automatic_payment_methods": automaticPaymentMethods?.toJson(),
        "canceled_at": canceledAt,
        "cancellation_reason": cancellationReason,
        "capture_method": captureMethod,
        "client_secret": clientSecret,
        "confirmation_method": confirmationMethod,
        "created": created,
        "currency": currency,
        "customer": customer,
        "description": description,
        "invoice": invoice,
        "last_payment_error": lastPaymentError,
        "latest_charge": latestCharge,
        "livemode": livemode,
        "metadata": metadata?.toJson(),
        "next_action": nextAction,
        "on_behalf_of": onBehalfOf,
        "payment_method": paymentMethod,
        "payment_method_options": paymentMethodOptions?.toJson(),
        "payment_method_types": paymentMethodTypes.map((x) => x).toList(),
        "processing": processing,
        "receipt_email": receiptEmail,
        "review": review,
        "setup_future_usage": setupFutureUsage,
        "shipping": shipping,
        "source": source,
        "statement_descriptor": statementDescriptor,
        "statement_descriptor_suffix": statementDescriptorSuffix,
        "status": status,
        "transfer_data": transferData,
        "transfer_group": transferGroup,
      };
}

class AmountDetails {
  AmountDetails({
    required this.tip,
  });

  final Metadata? tip;

  factory AmountDetails.fromJson(Map<String, dynamic> json) {
    return AmountDetails(
      tip: json["tip"] == null ? null : Metadata.fromJson(json["tip"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "tip": tip?.toJson(),
      };
}

class Metadata {
  Metadata({required this.json});
  final Map<String, dynamic> json;

  factory Metadata.fromJson(Map<String, dynamic> json) {
    return Metadata(json: json);
  }

  Map<String, dynamic> toJson() => {};
}

class AutomaticPaymentMethods {
  AutomaticPaymentMethods({
    required this.enabled,
  });

  final bool? enabled;

  factory AutomaticPaymentMethods.fromJson(Map<String, dynamic> json) {
    return AutomaticPaymentMethods(
      enabled: json["enabled"],
    );
  }

  Map<String, dynamic> toJson() => {
        "enabled": enabled,
      };
}

class PaymentMethodOptions {
  PaymentMethodOptions({
    required this.card,
    required this.link,
  });

  final Card? card;
  final Link? link;

  factory PaymentMethodOptions.fromJson(Map<String, dynamic> json) {
    return PaymentMethodOptions(
      card: json["card"] == null ? null : Card.fromJson(json["card"]),
      link: json["link"] == null ? null : Link.fromJson(json["link"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "card": card?.toJson(),
        "link": link?.toJson(),
      };
}

class Card {
  Card({
    required this.installments,
    required this.mandateOptions,
    required this.network,
    required this.requestThreeDSecure,
  });

  final dynamic installments;
  final dynamic mandateOptions;
  final dynamic network;
  final String? requestThreeDSecure;

  factory Card.fromJson(Map<String, dynamic> json) {
    return Card(
      installments: json["installments"],
      mandateOptions: json["mandate_options"],
      network: json["network"],
      requestThreeDSecure: json["request_three_d_secure"],
    );
  }

  Map<String, dynamic> toJson() => {
        "installments": installments,
        "mandate_options": mandateOptions,
        "network": network,
        "request_three_d_secure": requestThreeDSecure,
      };
}

class Link {
  Link({
    required this.persistentToken,
  });

  final dynamic persistentToken;

  factory Link.fromJson(Map<String, dynamic> json) {
    return Link(
      persistentToken: json["persistent_token"],
    );
  }

  Map<String, dynamic> toJson() => {
        "persistent_token": persistentToken,
      };
}
