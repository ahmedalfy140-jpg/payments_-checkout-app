import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/utils/app_router.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      
        theme: ThemeData(
  scaffoldBackgroundColor: Colors.white,
),
      
      
      debugShowCheckedModeBanner: false,
     
       routerConfig: AppRouter.router,
    );
  }
}


Future<void> initPaymentSheet() async {
  try {
    // 1. Create payment intent on the server
    final data = await _createPaymentSheet();

    // 2. Create billing details (optional)
    final billingDetails = BillingDetails(
      name: 'Flutter Stripe',
      email: 'email@stripe.com',
      phone: '+48888000888',
      address: Address(
        city: 'Houston',
        country: 'US',
        line1: '1459  Circle Drive',
        line2: '',
        state: 'Texas',
        postalCode: '77063',
      ),
    );

    // 3. Initialize the payment sheet
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        // Main params
        paymentIntentClientSecret: data['paymentIntent'],
        merchantDisplayName: 'Flutter Stripe Store Demo',
        // Customer params
        customerId: data['customer'],
        customerEphemeralKeySecret: data['ephemeralKey'],
        // Return URL for redirect-based payment methods
        returnURL: 'flutterstripe://redirect',
        // Extra options
        primaryButtonLabel: 'Pay now',
        applePay: PaymentSheetApplePay(
          merchantCountryCode: 'US',
        ),
        googlePay: PaymentSheetGooglePay(
          merchantCountryCode: 'US',
          testEnv: true,
        ),
        style: ThemeMode.dark,
        billingDetails: billingDetails,
      ),
    );
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: $e')),
    );
    rethrow;
  }
}
