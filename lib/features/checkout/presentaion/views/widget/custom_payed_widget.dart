import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomPayedWidget extends StatelessWidget {
  const CustomPayedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 113,
      height: 53,
      decoration:BoxDecoration(
        border: Border.all(
          color: Color(0xff24A583),
          width: 1.5
        ),
        borderRadius: BorderRadius.circular(15),

      ),
      
      child:Center(child: Text('Payed',style: Styles.style24.copyWith(color: Color(0xff24A583),),)) ,


    );
  }
}