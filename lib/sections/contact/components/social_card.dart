import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({
    super.key, required this.name, required this.imgUrl, required this.color, required this.press,
  });
  final String name,imgUrl;
  final Color color;
  final Function press;

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press(),
      onHover: (value){
        setState(() {
          isHover = value;
        });
      },

      child: FittedBox(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding/2, horizontal: kDefaultPadding *1.5),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow:  [if(isHover) kDefaultShadow],
          ),
          child: Row(
            children: [
              Image.asset(widget.imgUrl),
              SizedBox(width: kDefaultPadding,),
              Text(widget.name, style: TextStyle(color: Color(0xFF009688), fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}