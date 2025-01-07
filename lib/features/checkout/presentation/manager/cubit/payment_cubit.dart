import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_feature/features/checkout/data/model/payment_intent_input_model.dart';
import 'package:payment_feature/features/checkout/data/repo/checkout_repo.dart';
part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final CheckoutRepo _checkoutRepo;

  PaymentCubit(this._checkoutRepo) : super(PaymentInitial());

  Future<void> makePayment({required PaymentIntentInputModel input}) async {
    emit(PaymentLoading());
    final result = await _checkoutRepo.makePayment(input: input);
    result.fold(
      (failure) => emit(PaymentFailure(failure: failure.message)),
      (r) => emit(PaymentSuccess()),
    );
  }

  @override
  void onChange(Change<PaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
