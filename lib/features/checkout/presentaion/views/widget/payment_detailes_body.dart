import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment_app/core/utils/app_router.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/custom_button.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/custom_credit_card.dart';

import 'package:payment_app/features/checkout/presentaion/views/widget/payment_method_listview.dart';

class PaymentDetailesBody extends StatefulWidget {
   const PaymentDetailesBody({super.key});

  @override
  State<PaymentDetailesBody> createState() => _PaymentDetailesBodyState();
}

class _PaymentDetailesBodyState extends State<PaymentDetailesBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
   AutovalidateMode autovalidateMode =AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child:CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: PaymentMethodsListView(),
          ),
          SliverToBoxAdapter(
            child: CustomCreditCard(formKey: formKey, autovalidateMode: autovalidateMode,),
          ),
          SliverFillRemaining(
            hasScrollBody: false,

            child: Align(
              alignment: AlignmentGeometry.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: CustomButton(buttonName: 'Pay', onTap: (){
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                    log('payment');
                  }else{
                    GoRouter.of(context).push(AppRouter.kThankYouView);
                    autovalidateMode=AutovalidateMode.always;
                     
                    setState(() {
                      
                    });

                  }

                }),
              )),
          ),
       
        ],
      )
    );
  }
}



