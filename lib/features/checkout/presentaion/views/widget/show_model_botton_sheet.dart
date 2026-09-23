  import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/custom_button.dart';
  import 'package:payment_app/features/checkout/presentaion/views/widget/payment_method_listview.dart';

  class ShowModelBottonSheet extends StatefulWidget {
    const ShowModelBottonSheet({super.key});

    @override
    State<ShowModelBottonSheet> createState() => _ShowModelBottonSheetState();
  }

  class _ShowModelBottonSheetState extends State<ShowModelBottonSheet> {
    
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PaymentMethodsListView(),
            SizedBox(height: 20,),
            CustomButton(buttonName: 'Continue', onTap: (){})
          ],
        ),
      );
    }
  }