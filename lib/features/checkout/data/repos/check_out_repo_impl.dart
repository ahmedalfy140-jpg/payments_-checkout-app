import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:payment_app/core/errors/server_failuar.dart';
import 'package:payment_app/core/utils/stripe_service.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/data/repos/checkout_repo.dart';

class CheckOutRepoImpl extends CheckoutRepo {
  final StripeService stripeService =StripeService();
  @override
  Future<Either<Failure, void>> makePayment({required PaymentIntentInputModel paymentIntentInput})async {
   try {
     await stripeService.makePayment(paymentIntentInput: paymentIntentInput);
     return right(null);
   }  catch (e) {

     if(e is DioException){
      return left(ServerFailure.fromDioError(e));
     }else{
      return left(ServerFailure(e.toString()));
     }
   }
    
  }
}