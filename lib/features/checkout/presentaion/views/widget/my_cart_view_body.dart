import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment_app/core/utils/app_router.dart';

import 'package:payment_app/features/checkout/presentaion/views/widget/custom_button.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/my_cart_total_price_widget.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/order_info_item_widget.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/show_model_botton_sheet.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 18),
          Expanded(child: Image.asset('assets/images/order imae.png')),
          SizedBox(height: 25),
          OrderInfoItem(title: 'Order Subtotal', value: r'$42.97'),
          SizedBox(height: 3),
          OrderInfoItem(title: 'Discount', value: r'$0'),
          SizedBox(height: 3),
          OrderInfoItem(title: 'Shipping', value: r'$8'),
          Divider(thickness: 2, height: 34, color: const Color(0xFFC7C7C7)),
          MyCartTotalPrice(title: 'Total', value: r'$50.97'),
           SizedBox(height: 16),
          CustomButton(
            onTap: (){
              showModalBottomSheet(
                
                backgroundColor: Colors.white,
                
                context: context, builder: (BuildContext context){
                return ShowModelBottonSheet();
              });
             
              // GoRouter.of(context).push(AppRouter.kPaymentDetailsView);
            },
            buttonName: 'Complete Payment'),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
