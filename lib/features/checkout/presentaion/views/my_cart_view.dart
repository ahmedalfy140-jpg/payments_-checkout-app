import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/styles.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      leading:Center(
        child: SvgPicture.asset(
          'assets/images/arrow.svg',
        
        ),
      ),
      title: Text('My Cart',style: Styles.style25,),
      centerTitle: true,
    ),);
    
  }
  
}