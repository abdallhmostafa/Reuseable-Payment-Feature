import 'package:flutter/material.dart';

class CreditCardForm extends StatelessWidget {
  const CreditCardForm({
    super.key,
    required this.formKey,
    required this.cardNumberController,
    required this.expiryDateController,
    required this.cvvController,
    required this.cardHolderFullNameController,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController cardNumberController;
  final TextEditingController expiryDateController;
  final TextEditingController cvvController;
  final TextEditingController cardHolderFullNameController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 14,
        children: [
          TextFormField(
            onChanged: (value) {
              cardNumberController.text = value;
            },
            decoration: InputDecoration(labelText: 'Card Number'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Card number is required';
              }
              return null;
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextFormField(
                  onChanged: (value) {
                    expiryDateController.text = value;
                  },
                  decoration: InputDecoration(labelText: 'Expiry Date'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Expiry date is required';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: TextFormField(
                  onChanged: (value) {
                    cvvController.text = value;
                  },
                  decoration: InputDecoration(labelText: 'CVV'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'CVV is required';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
          TextFormField(
            onChanged: (value) {
              cardHolderFullNameController.text = value;
            },
            decoration: const InputDecoration(
              labelText: 'Card Holder Name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Card holder name is required';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
