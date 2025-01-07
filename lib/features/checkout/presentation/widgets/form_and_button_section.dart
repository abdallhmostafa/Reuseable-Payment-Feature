import 'package:flutter/material.dart';
import 'package:payment_feature/features/checkout/data/model/cardit_card_model.dart';
import 'package:payment_feature/features/checkout/presentation/view/thank_you_view.dart';
import 'package:payment_feature/features/checkout/presentation/widgets/card_section.dart';
import 'package:payment_feature/features/checkout/presentation/widgets/credit_card_form.dart';
import 'package:payment_feature/features/checkout/presentation/widgets/custom_button.dart';

class FormAndButtonSection extends StatefulWidget {
  const FormAndButtonSection({super.key});

  @override
  State<FormAndButtonSection> createState() => _FormAndButtonSectionState();
}

class _FormAndButtonSectionState extends State<FormAndButtonSection> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cardHolderNameController =
      TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  final TextEditingController _balanceController = TextEditingController();
  final TextEditingController _cardHolderFullNameController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardSection(
          cardModel: CarditCardModel(
            cardNumber: _cardNumberController.text,
            cardHolderName: _cardHolderNameController.text,
            expiryDate: _expiryDateController.text,
            cvv: _cvvController.text,
            balance: 0,
            cardHolderFullName: _cardHolderFullNameController.text,
          ),
        ),
        const SizedBox(height: 30),
        CreditCardForm(
          formKey: _formKey,
          cardNumberController: _cardNumberController,
          expiryDateController: _expiryDateController,
          cvvController: _cvvController,
          cardHolderFullNameController: _cardHolderFullNameController,
        ),
        const SizedBox(height: 10),
        Align(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: CustomButton(
                  text: 'Pay Now',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ThankYouView(),
                        ),
                      );
                    }
                  }),
            ),
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    _cardNumberController.dispose();
    _cardHolderNameController.dispose();
    _expiryDateController.dispose();
    _cvvController.dispose();
    _balanceController.dispose();
    _cardHolderFullNameController.dispose();
    super.dispose();
  }
}
