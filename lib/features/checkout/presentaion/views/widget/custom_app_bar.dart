 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/styles.dart';

AppBar buildAppBar({required final String title ,required final void Function()? onTap}) {
    return AppBar(
    leading:Center(
      child: GestureDetector(
        onTap: onTap
          
        ,
        child: SvgPicture.asset(
          'assets/images/arrow.svg',
        
        ),
      ),
    ),
    title: Text(title,style: Styles.style25,),
    centerTitle: true,
  );
  }
  

