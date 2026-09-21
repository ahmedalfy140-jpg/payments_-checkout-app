import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/master_card_logo.dart';

class ThankYouMethodPayment extends StatelessWidget {
  const ThankYouMethodPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          // Mastercard Logo
          const MastercardLogo(),

          const SizedBox(width: 20),

           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Credit Card',
                style: Styles.semiBold18
              ),

              SizedBox(height: 2),

              Text(
                'Mastercard **78',
                style:Styles.regular16
              ),
            ],
          ),
        ],
      ),
    );
  }
}


