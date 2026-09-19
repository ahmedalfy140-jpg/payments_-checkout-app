import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
   const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethodItems=['assets/images/card.svg','assets/images/paypal.svg','assets/images/paymac.svg'];

 int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentMethodItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder:((context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
             onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            
            child: PaymentMethodItem(image: paymentMethodItems[index],isActive: selectedIndex==index,)),
        );
      }) ),
    );
  }
}