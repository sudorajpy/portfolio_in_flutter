import 'package:flutter/material.dart';
import 'package:portfolio_in_flutter/components/section_title.dart';
import 'package:portfolio_in_flutter/models/feedback.dart';

import '../../constants/constants.dart';
import 'components/feedback_section_card.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1200),
      child: Column(
        children: [
          const SectionTitle(
            title: 'Feedback Recieved',
            subtile: "Client's testimonials that inspired me a lot!",
            color: Color(0xFF00B1FF),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(feedbacks.length, (index) => FeedBackSectionCard(index: index,),),
          )
        ],
      ),
    );
  }
}

