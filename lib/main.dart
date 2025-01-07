import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_feature/core/api/api_keys.dart';
import 'package:payment_feature/core/theme/app_theme.dart';
import 'package:payment_feature/features/checkout/presentation/view/my_cart_view.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishedKey;
  runApp(const PaymentFeature());
}

class PaymentFeature extends StatelessWidget {
  const PaymentFeature({super.key});

  @override
  Widget build(BuildContext context) {
    final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorObservers: [routeObserver],
      title: 'Payment Feature',
      theme: AppTheme.theme,
      home: MyCartView(),
    );
  }
}

// Payment Sheet Steps
// 1. create payment intent on the server
// 2. initialize the payment sheet
// 3. display the payment sheet
// 4. handle the payment result
