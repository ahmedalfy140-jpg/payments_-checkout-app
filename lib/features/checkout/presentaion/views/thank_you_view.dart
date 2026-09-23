import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

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
          padding: const EdgeInsets.only(top:32,left: 16,right: 16),
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

              const SizedBox(height: 8),

              // Receipt Card
              const ThankYouViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}
      
    

  