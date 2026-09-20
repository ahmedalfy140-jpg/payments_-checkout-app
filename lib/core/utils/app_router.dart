import 'package:go_router/go_router.dart';

import 'package:payment_app/features/checkout/presentaion/views/my_cart_view.dart';

import 'package:payment_app/features/checkout/presentaion/views/payment_detailes_view.dart';
import 'package:payment_app/features/checkout/presentaion/views/thank_you_view.dart';

abstract class AppRouter {
  static const String kMyCartView = '/myCartView';
  static const String kPaymentDetailsView = '/paymentDetailsView';
  static const String kThankYouView = '/thankYouView';

  static final GoRouter router = GoRouter(
    initialLocation: kMyCartView,

    routes: [
      GoRoute(
        path: kMyCartView,
        builder: (context, state) {
          return const MyCartView();
        },
      ),

      GoRoute(
        path: kPaymentDetailsView,
        builder: (context, state) {
          return const PaymentDetailesView();
        },
      ),
       GoRoute(
        path: kThankYouView,
        builder: (context, state) {
          return const ThankYouView();
        },
      ),
    ],
  );
}