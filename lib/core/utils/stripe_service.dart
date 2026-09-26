
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/utils/api_keys.dart';
import 'package:payment_app/core/utils/api_service.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_model.dart';

class StripeService {
  final ApiService apiService = ApiService();

  Future<PaymentIntentModel> createPaymentIntent(
    PaymentIntentInputModel paymentIntentInput,
  ) async {
    final response = await apiService.post(
      body: paymentIntentInput.toJson(),
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey,
    );

    final paymentIntent =
        PaymentIntentModel.fromJson(response.data);

    return paymentIntent;
  }
 
Future<void> initPaymentSheet({
  required String clientSecret,
}) async {
  await Stripe.instance.initPaymentSheet(
    paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: clientSecret,
      merchantDisplayName: 'Payment App',
    ),
  );
}
Future disPlayPaymentSheet() async{
await  Stripe.instance.presentPaymentSheet();
}
Future makePayment({required PaymentIntentInputModel paymentIntentInput })async{
  var paymentIntentModel =await createPaymentIntent(paymentIntentInput);
  await initPaymentSheet(clientSecret: paymentIntentModel.clientSecret);
  await disPlayPaymentSheet();

}



}

