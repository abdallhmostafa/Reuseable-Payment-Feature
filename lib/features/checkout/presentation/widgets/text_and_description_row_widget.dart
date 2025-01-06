import 'package:flutter/material.dart';
import 'package:payment_feature/core/theme/app_text_style.dart';

class TextAndDescriptionRowWidget extends StatelessWidget {
  const TextAndDescriptionRowWidget(
      {super.key, required this.title, required this.description});
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.style18W400,
        ),
        Text(
          description,
          style: AppTextStyle.style18W400,
        )
      ],
    );
  }
}
