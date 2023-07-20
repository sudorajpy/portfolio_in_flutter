import 'package:flutter/material.dart';

import '../constants/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key, required this.text, required this.imgSrc, required this.press,
  });
  final String text, imgSrc;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      //create padding for the button
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 2.5,
            vertical: kDefaultPadding),
       backgroundColor: Color(0xFFE8E0E9),
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      
      onPressed: press(), child: Row(
      children: [
        Image.asset(imgSrc,height: 40,),
        SizedBox(width: kDefaultPadding,),
        Text(text,style: TextStyle(color: Colors.black),),
      ],
    ));
  }
}

