import 'package:flutter/material.dart';
import 'package:payment_feature/core/common/widgets/custom_app_bar.dart';
import 'package:payment_feature/features/checkout/presentation/widgets/thank_you_body_section.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: '', context: context, canPop: true),
      body: Transform.translate(
          offset: Offset(0, -50), child: ThankYouBodySection()),
    );
  }
}
