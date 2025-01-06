import 'package:flutter/material.dart';
import 'package:payment_feature/features/checkout/presentation/widgets/custom_button.dart';
import 'package:payment_feature/features/checkout/presentation/widgets/payment_method_section.dart';

class PaymentMethodModalSheet extends StatelessWidget {
  const PaymentMethodModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 20,
        children: [
          PaymentMethodSection(),
          CustomButton(text: 'Continue', onPressed: () {})
        ],
      ),
    );
  }
}
