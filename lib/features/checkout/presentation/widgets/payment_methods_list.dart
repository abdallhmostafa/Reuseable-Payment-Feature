import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_feature/core/assets/app_assets.dart';

class PaymentMethodsListItem extends StatelessWidget {
  const PaymentMethodsListItem(
      {super.key, required this.assetName, this.isActive = false});
  final String assetName;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      height: 50,
      width: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: isActive ? Colors.blue : Colors.transparent,
              width: isActive ? 1 : 0),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(158, 158, 158, 0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ]),
      child: SvgPicture.asset(
        assetName,
      ),
    );
  }
}

const List<String> paymentMethods = [
  AppAssets.applePay,
  AppAssets.credit,
  AppAssets.payPal,
];
