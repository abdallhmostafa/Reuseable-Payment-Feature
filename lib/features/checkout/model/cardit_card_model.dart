class CarditCardModel {
  final String cardNumber;
  final String cardHolderName;
  final String expiryDate;
  final String cvv;
  final double balance;
  final String cardHolderFullName;
  CarditCardModel({
    required this.cardNumber,
    required this.cardHolderName,
    required this.expiryDate,
    required this.cvv,
    required this.balance,
    required this.cardHolderFullName,
  });
}
