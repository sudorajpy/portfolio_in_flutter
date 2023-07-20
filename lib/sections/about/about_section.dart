import 'package:flutter/material.dart';
import 'package:portfolio_in_flutter/constants/constants.dart';

import '../../components/default_button.dart';
import '../../components/my_outlined_button.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1200),
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(),
              ),
              ExperienceCard(numOfExp: '02'),
              Expanded(
                child: AboutSectionText(),
              ),
            ],
          ),
          const SizedBox(
            height: kDefaultPadding * 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlinedButton(imgSrc: 'assets/images/hand.png',press: (){},text: "Hire Me!",),
              SizedBox(width: kDefaultPadding *1.5,),
              DefaultButton(imgSrc: 'assets/images/download.png',press: (){},text: 'Download CV',)
            ],
          ),
        ],
      ),
    );
  }
}

