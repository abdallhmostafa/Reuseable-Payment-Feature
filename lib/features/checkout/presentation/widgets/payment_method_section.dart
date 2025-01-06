import 'package:flutter/material.dart';
import 'package:payment_feature/features/checkout/presentation/widgets/payment_methods_list.dart';

class PaymentMethodSection extends StatefulWidget {
  const PaymentMethodSection({super.key});

  @override
  State<PaymentMethodSection> createState() => _PaymentMethodSectionState();
}

class _PaymentMethodSectionState extends State<PaymentMethodSection> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 50,
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                  child: PaymentMethodsListItem(
                      assetName: paymentMethods[index],
                      isActive: activeIndex == index),
                ),
            separatorBuilder: (context, index) => SizedBox(
                  width: index == 0 ? 0 : 10,
                ),
            itemCount: paymentMethods.length),
      ),
    );
  }
}
