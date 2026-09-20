import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';


class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key, required this.formKey, required this.autovalidateMode});
  final GlobalKey <FormState> formKey;
final AutovalidateMode autovalidateMode ;
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '',bankName='';

  bool showBackView = false;

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
         
          bankName:'BANK CIB' ,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          isHolderNameVisible: true,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          autovalidateMode: widget.autovalidateMode,
          onCreditCardModelChange: (creditCardModel) {
            cardHolderName=creditCardModel.cardHolderName;
            expiryDate=creditCardModel.expiryDate;
            cvvCode=creditCardModel.cvvCode;
            cardNumber=creditCardModel.cardNumber;
            showBackView=creditCardModel.isCvvFocused;
            setState(() {
              
            });
          },
          formKey: widget.formKey,
        ),
      
      ],

    );
  }
}
