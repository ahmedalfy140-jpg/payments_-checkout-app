
class PaymentIntentModel {
  final String id;
  final String object;
  final int amount;
  final int amountCapturable;
  final int amountReceived;
  final String? application;
  final int? applicationFeeAmount;
  final bool automaticPaymentMethodsEnabled;
  final String? canceledAt;
  final String? cancellationReason;
  final String captureMethod;
  final String clientSecret;
  final String confirmationMethod;
  final int created;
  final String currency;
  final String? customer;
  final String? description;
  final String? latestCharge;
  final String? paymentMethod;
  final String? receiptEmail;
  final String? review;
  final String? setupFutureUsage;
  final String? shipping;
  final String? statementDescriptor;
  final String? statementDescriptorSuffix;
  final String status;
  final String? transferGroup;

  PaymentIntentModel({
    required this.id,
    required this.object,
    required this.amount,
    required this.amountCapturable,
    required this.amountReceived,
    required this.automaticPaymentMethodsEnabled,
    required this.captureMethod,
    required this.clientSecret,
    required this.confirmationMethod,
    required this.created,
    required this.currency,
    required this.status,
    this.application,
    this.applicationFeeAmount,
    this.canceledAt,
    this.cancellationReason,
    this.customer,
    this.description,
    this.latestCharge,
    this.paymentMethod,
    this.receiptEmail,
    this.review,
    this.setupFutureUsage,
    this.shipping,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    this.transferGroup,
  });

  factory PaymentIntentModel.fromJson(Map<String, dynamic> json) {
    return PaymentIntentModel(
      id: json['id'],
      object: json['object'],
      amount: json['amount'],
      amountCapturable: json['amount_capturable'],
      amountReceived: json['amount_received'],
      automaticPaymentMethodsEnabled:
          json['automatic_payment_methods']?['enabled'] ?? false,
      canceledAt: json['canceled_at'],
      cancellationReason: json['cancellation_reason'],
      captureMethod: json['capture_method'],
      clientSecret: json['client_secret'],
      confirmationMethod: json['confirmation_method'],
      created: json['created'],
      currency: json['currency'],
      customer: json['customer'],
      description: json['description'],
      latestCharge: json['latest_charge'],
      paymentMethod: json['payment_method'],
      receiptEmail: json['receipt_email'],
      review: json['review'],
      setupFutureUsage: json['setup_future_usage'],
      shipping: json['shipping'],
      statementDescriptor: json['statement_descriptor'],
      statementDescriptorSuffix: json['statement_descriptor_suffix'],
      status: json['status'],
      transferGroup: json['transfer_group'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'object': object,
      'amount': amount,
      'amount_capturable': amountCapturable,
      'amount_received': amountReceived,
      'automatic_payment_methods': {
        'enabled': automaticPaymentMethodsEnabled,
      },
      'canceled_at': canceledAt,
      'cancellation_reason': cancellationReason,
      'capture_method': captureMethod,
      'client_secret': clientSecret,
      'confirmation_method': confirmationMethod,
      'created': created,
      'currency': currency,
      'customer': customer,
      'description': description,
      'latest_charge': latestCharge,
      'payment_method': paymentMethod,
      'receipt_email': receiptEmail,
      'review': review,
      'setup_future_usage': setupFutureUsage,
      'shipping': shipping,
      'statement_descriptor': statementDescriptor,
      'statement_descriptor_suffix': statementDescriptorSuffix,
      'status': status,
      'transfer_group': transferGroup,
    };
  }
}

