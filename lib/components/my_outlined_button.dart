import 'package:flutter/material.dart';

import '../constants/constants.dart';

class MyOutlinedButton extends StatelessWidget {
  const MyOutlinedButton({
    super.key,
    required this.imgSrc,
    required this.text,
    required this.press,
  });
  final String imgSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 2, vertical: kDefaultPadding),
            side: BorderSide(
              color: Color(0xFFEDEDED),
            ),
          ),
          onPressed: press(),
          child: Row(
            children: [
              Image.asset(
                imgSrc,
                height: 40,
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              Text(text, style: TextStyle(color: Colors.black)),
            ],
          )),
    );
  }
}
