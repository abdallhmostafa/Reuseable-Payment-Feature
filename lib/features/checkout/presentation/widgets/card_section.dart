import 'package:flutter/material.dart';
import 'package:payment_feature/features/checkout/model/cardit_card_model.dart';
import 'package:u_credit_card/u_credit_card.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key, required this.cardModel});
  final CarditCardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return CreditCardUi(
      disableHapticFeedBack: true,
      cardHolderFullName: cardModel.cardHolderFullName,
      cardNumber: cardModel.cardNumber,
      validFrom: cardModel.expiryDate,
      validThru: cardModel.expiryDate,
      topLeftColor: Colors.blue,
      doesSupportNfc: true,
      placeNfcIconAtTheEnd: true,
      cardType: CardType.debit,
      cardProviderLogo: FlutterLogo(),
      cardProviderLogoPosition: CardProviderLogoPosition.right,
      showBalance: true,
      balance: cardModel.balance,
      autoHideBalance: true,
      enableFlipping: true,
      cvvNumber: cardModel.cvv,
    );
  }
}
