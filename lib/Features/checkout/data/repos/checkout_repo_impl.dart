import 'package:dartz/dartz.dart';
import 'package:paymentapp/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:paymentapp/Features/checkout/data/repos/checkout_repo.dart';
import 'package:paymentapp/core/errors/failures.dart';
import 'package:paymentapp/core/utils/strip_service.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  final StripService stripService = StripService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripService.makePayment(
          paymentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
