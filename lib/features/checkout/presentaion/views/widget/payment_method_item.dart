 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({super.key,  this.isActive=false, required this.image});
 final bool isActive ;
final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        height: 62,
        width: 103,
        decoration: ShapeDecoration(shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.50,color:isActive ? Color(0xff34A853):Colors.grey),
          borderRadius: BorderRadius.circular(15)
           
        ),
        shadows: [
          BoxShadow(
           color:isActive ? Color(0xff34A853):Colors.white,
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0
          )

        ]
        
        ),
         duration: Duration(milliseconds: 300),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
             color: Colors.white
          ),
          child: Center(child: SvgPicture.asset(image,height: 30,fit: BoxFit.scaleDown,),),
        ),
        
      );
  }
}

