import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/custom_app_bar.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: '', onTap: (){GoRouter.of(context).pop();
        
      }),
      body: ThankYouViewBody(),
      
    

    );
  }
}