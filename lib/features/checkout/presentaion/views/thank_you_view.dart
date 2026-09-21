import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:payment_app/core/utils/app_router.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/custom_app_bar.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              // Back Button
              Align(
                alignment: Alignment.centerLeft,
                child:GestureDetector(
        onTap: (){GoRouter.of(context).pop();}
          
        ,
        child: SvgPicture.asset(
          'assets/images/arrow.svg',
        
        ),
      ),
              ),

              const SizedBox(height: 16),

              // Receipt Card
              const ThankYouViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}
      
    

  