import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonName,required this.onTap});
  final String buttonName;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
       
        width: double.infinity,
        height: 73,
        decoration: ShapeDecoration(
          color: Color(0xff34A853),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(15)
        )),
         child:Center(child: Text(buttonName,style: Styles.style22,)) ,
      ),
    );
  }
}