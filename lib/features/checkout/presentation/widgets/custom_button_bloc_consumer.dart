import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_feature/features/checkout/data/model/payment_intent_input_model.dart';
import 'package:payment_feature/features/checkout/presentation/manager/cubit/payment_cubit.dart';
import 'package:payment_feature/features/checkout/presentation/view/thank_you_view.dart';
import 'package:payment_feature/features/checkout/presentation/widgets/custom_button.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.pop(context);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const ThankYouView()));
        }
        if (state is PaymentFailure) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.failure),
              dismissDirection: DismissDirection.horizontal,
              behavior: SnackBarBehavior.floating,
              duration: const Duration(seconds: 10),
            ),
          );
        }
      },
      builder: (context, state) {
        return CustomButton(
          text: 'Continue',
          onPressed: () {
            context.read<PaymentCubit>().makePayment(
                  input: PaymentIntentInputModel(
                    amount: '100',
                    customerId: 'cus_RXiqqIXRxzXPpB',
                    currency: 'usd',
                     ),
                );
          },
          isLoading: state is PaymentLoading,
        );
      },
    );
  }
}
