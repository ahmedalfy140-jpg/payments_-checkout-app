import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/checkout/presentaion/views/widget/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading:Center(
        child: SvgPicture.asset(
          'assets/images/arrow.svg',
        
        ),
      ),
      title: Text('My Cart',style: Styles.style25,),
      centerTitle: true,
    ),
    body:MyCartViewBody()
    
    
    
    
    );
    
  }
  
}

class MyCartAppBar extends StatelessWidget {
  const MyCartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
