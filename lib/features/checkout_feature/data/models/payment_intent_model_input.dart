class PaymentIntentModelInput {
  final String amount;
  final String currency;

  PaymentIntentModelInput({required this.amount, required this.currency});

  toJson() {
    return {'amount': amount, 'currency': currency};
  }
}
