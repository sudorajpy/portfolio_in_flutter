import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../models/feedback.dart';

class FeedBackSectionCard extends StatefulWidget {
  const FeedBackSectionCard({
    super.key, required this.index, 
  });
  final int index;
  // final Function press;

  @override
  State<FeedBackSectionCard> createState() => _FeedBackSectionCardState();
}

class _FeedBackSectionCardState extends State<FeedBackSectionCard> {
  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.only(top: kDefaultPadding * 3),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: 350,
        width: 350,
        decoration: BoxDecoration(
          color: feedbacks[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if(isHover) kDefaultCardShadow],
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0, -55),
              child: AnimatedContainer(
                duration: duration,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 10),
                  boxShadow: [if(!isHover) kDefaultCardShadow],
                  image: DecorationImage(
                    image: AssetImage(feedbacks[widget.index].userPic),
                  ),
                ),
              ),
            ),
            Text(
              feedbacks[widget.index].review,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
                color: kTextColor,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            Text(
              feedbacks[widget.index].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
