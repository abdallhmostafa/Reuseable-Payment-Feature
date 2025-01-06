import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_feature/core/assets/app_assets.dart';
import 'package:payment_feature/core/theme/app_text_style.dart';
import 'package:payment_feature/features/checkout/presentation/widgets/text_and_description_row_widget.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 20),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 10),
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Column(
        spacing: 20,
        children: [
          _buildTitleAndSubtitle(),
          SizedBox(height: 20),
          _buildOrderDetails(),
          Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          TextAndDescriptionRowWidget(title: 'Total', description: "\$50.00"),
          const Spacer(),
          _buildCardPreview(),
          _buildQRCodeAndPaid(),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildQRCodeAndPaid() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset(AppAssets.qrCode),
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.green, width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text(
              "Paid",
              style: AppTextStyle.style22W500.copyWith(
                color: Colors.green,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildCardPreview() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        spacing: 20,
        children: [
          SvgPicture.asset(AppAssets.masterCard),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Credit Card", style: AppTextStyle.style20W500),
              Text("Mastercard **54", style: AppTextStyle.style16W400),
            ],
          ),
        ],
      ),
    );
  }

  Column _buildTitleAndSubtitle() {
    return Column(
      children: [
        Text("Thank you!", style: AppTextStyle.style25W700),
        Text("Your order has been placed successfully",
            style: AppTextStyle.style20W500, textAlign: TextAlign.center),
      ],
    );
  }

  Column _buildOrderDetails() {
    return Column(
      children: [
        TextAndDescriptionRowWidget(
            title: 'Data', description: DateTime.now().year.toString()),
        TextAndDescriptionRowWidget(
            title: 'Time',
            description:
                "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().hour == 12 ? "PM" : "AM"}"),
        TextAndDescriptionRowWidget(title: 'Total', description: "Abdalrahman"),
      ],
    );
  }
}
