import 'package:flutter/material.dart';
import 'package:payment_feature/core/assets/app_assets.dart';
import 'package:payment_feature/core/common/widgets/custom_app_bar.dart';
import 'package:payment_feature/core/theme/app_text_style.dart';
import 'package:payment_feature/features/checkout/presentation/widgets/custom_button.dart';
import 'package:payment_feature/features/checkout/presentation/widgets/payment_method_modal_sheet.dart';
import 'package:payment_feature/features/checkout/presentation/widgets/text_and_description_row_widget.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'My Cart', context: context),
      body: _body(context),
    );
  }

  Padding _body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        spacing: 3,
        children: [
          Expanded(
            child: Image.asset(
              AppAssets.cart,
            ),
          ),
          SizedBox(height: 17),
          TextAndDescriptionRowWidget(title: 'Apple', description: '1.99'),
          TextAndDescriptionRowWidget(title: 'Banana', description: '2.99'),
          TextAndDescriptionRowWidget(title: 'Orange', description: '3.99'),
          Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          TotalPrice(price: 9.97),
          SizedBox(height: 10),
          CustomButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => const PaymentMethodModalSheet());
            },
            text: 'Pay Now',
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.price});
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Total",
          style: AppTextStyle.style24W500,
        ),
        Text(
          "\$$price",
          style: AppTextStyle.style24W500,
        )
      ],
    );
  }
}
