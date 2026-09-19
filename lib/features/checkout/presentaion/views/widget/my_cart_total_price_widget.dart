import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class MyCartTotalPrice extends StatelessWidget {
  const MyCartTotalPrice({super.key, required this.title, required this.value});
  final String title , value;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        title,
        textAlign: TextAlign.center,
        style: Styles.style24,


      ),Spacer(),
       Text(
        value,
        textAlign: TextAlign.center,
        style: Styles.style24,


      )
      
    ],
    
    );
  }
}