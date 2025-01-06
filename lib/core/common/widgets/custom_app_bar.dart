import 'package:flutter/material.dart';
import 'package:payment_feature/core/theme/app_text_style.dart';

AppBar appBar(
    {required final String title,
    required final BuildContext context,
    canPop = false}) {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
      onPressed: () {
        canPop ? Navigator.pop(context) : null;
      },
    ),
    title: Text(title, style: AppTextStyle.style25W700),
  );
}
