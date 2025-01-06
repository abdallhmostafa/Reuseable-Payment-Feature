import 'package:flutter/material.dart';
import 'package:payment_feature/core/common/widgets/custom_app_bar.dart';
import 'package:payment_feature/features/checkout/presentation/widgets/form_and_button_section.dart';
import 'package:payment_feature/features/checkout/presentation/widgets/payment_method_section.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Payment Details', context: context, canPop: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: const PaymentMethodSection()),
            SliverToBoxAdapter(child: SizedBox(height: 30)),
            SliverToBoxAdapter(child: FormAndButtonSection()),
          ],
        ),
      ),
    );
  }
}
