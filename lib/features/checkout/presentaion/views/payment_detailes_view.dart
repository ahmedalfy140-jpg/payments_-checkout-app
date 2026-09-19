import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/custom_app_bar.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/payment_detailes_body.dart';

class PaymentDetailesView extends StatelessWidget {
  const PaymentDetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Detailes', onTap: () { GoRouter.of(context).pop();}),
      body: PaymentDetailesBody(),
    );
  }
}