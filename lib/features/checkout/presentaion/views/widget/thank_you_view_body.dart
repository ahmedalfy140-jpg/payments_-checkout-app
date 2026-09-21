import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/custom_barcode_widget.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/custom_payed_widget.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/dashed_divider.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/my_cart_total_price_widget.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/order_info_item_widget.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/thank_you_method_payment.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          // width: 350,
          // height: 650,
          padding: const EdgeInsets.fromLTRB(20, 56, 20, 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),

            color: Color(0xffEDEDED),
          ),
          child: Column(
            children: [
              Text('Thank you!', style: Styles.style25),
              const SizedBox(height: 2),

              const Text(
                'Your transaction was successful',

                style: Styles.regular20,
              ),

              const SizedBox(height: 34),
              OrderInfoItem(title: 'Date', value: '01/24/2023'),
              const SizedBox(height: 18),
              OrderInfoItem(title: 'Time', value: '10:15 AM'),
              const SizedBox(height: 18),
              OrderInfoItem(title: 'To', value: 'Sam Louis'),
              Divider(thickness: 2, height: 34, color: const Color(0xFFC7C7C7)),
              const SizedBox(height: 18),
              MyCartTotalPrice(title: 'Total', value: r'$50.97'),
              SizedBox(height: 26),
              ThankYouMethodPayment(),
              SizedBox(height: 24),
              DashedDivider(),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [BarcodeWidget(), CustomPayedWidget()],
              ),
            ],
          ),
        ),
        Positioned(
          top: -36,
          child: Container(
            width: 100,
            height: 100,
            
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffEDEDED )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                
                  decoration: BoxDecoration(
                    color: Color(0xff34A853),
                    shape: BoxShape.circle
                  ),child: SvgPicture.asset('assets/images/check_mark.svg',height: 50,fit: BoxFit.scaleDown,)
                ),
              ),
              ),
              )

      ],

      
    );
  }
}
