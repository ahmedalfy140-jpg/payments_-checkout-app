import 'package:flutter/material.dart';

import 'package:payment_app/features/checkout/presentaion/views/widget/payment_method_listview.dart';

class PaymentDetailesBody extends StatelessWidget {
  const PaymentDetailesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymentMethodsListView()
      

      ],
    );
  }

}

