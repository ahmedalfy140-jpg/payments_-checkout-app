import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:payment_app/core/utils/app_router.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/presentaion/manger/cubit/payment_cubit.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/custom_button.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if(state is PaymentSuccess){
            GoRouter.of(context).push(AppRouter.kThankYouView);

        }
        if(state is PaymentFailure){
          SnackBar snackBar=SnackBar(content: Text(state.errorMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
          isLoading: state is PaymentLoading ? true : false,
          
          buttonName: 'Continue', onTap: () {
            PaymentIntentInputModel paymentIntentInputModel=PaymentIntentInputModel(amount: '50', currency: 'USD');
            BlocProvider.of<PaymentCubit>(context).makePayment(paymentIntentInput: paymentIntentInputModel);
          });
      },
    );
  }
}
