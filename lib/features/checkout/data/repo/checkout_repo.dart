import 'package:dartz/dartz.dart';
import 'package:payment_feature/core/utils/stripe_services.dart';
import 'package:payment_feature/features/checkout/data/model/payment_intent_input_model.dart';

class CheckoutRepo {
  final StripeServices _stripeServices;

  CheckoutRepo(this._stripeServices);

  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel input}) async {
    try {
      await _stripeServices.makePayment(input: input);
      return right(null);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}

class Failure {
  final String message;

  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});
}

class NetworkFailure extends Failure {
  NetworkFailure({required super.message});
}
