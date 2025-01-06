import 'package:flutter/material.dart';
import 'package:payment_feature/features/checkout/presentation/widgets/thank_you_card.dart';

class ThankYouBodySection extends StatelessWidget {
  const ThankYouBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildMainContainer(),
        _buildCircle(context, isLeft: false),
        _buildCircle(context),
        _buildGreenMark(),
        _buildDashLine(context),
      ],
    );
  }

  ThankYouCard _buildMainContainer() {
    return ThankYouCard();
  }

  Positioned _buildCircle(BuildContext context, {bool isLeft = true}) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.3,
      right: isLeft ? 0 : null,
      left: isLeft ? null : 0,
      child: CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }

  Positioned _buildGreenMark() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: CircleAvatar(
        backgroundColor: const Color(0xFFD9D9D9),
        radius: 50,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 45,
          child: FittedBox(
              fit: BoxFit.cover,
              child: Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 200,
              )),
        ),
      ),
    );
  }

  Positioned _buildDashLine(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.32,
      left: MediaQuery.sizeOf(context).width * 0.1,
      right: MediaQuery.sizeOf(context).width * 0.1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            40,
            (index) => Container(
              height: 2,
              width: 4,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
