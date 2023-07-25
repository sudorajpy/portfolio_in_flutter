import 'package:flutter/material.dart';
import 'package:portfolio_in_flutter/constants/constants.dart';

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
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              if (constraints.maxWidth > 600) // Show AboutTextWithSign only on wider screens
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AboutTextWithSign(),
                    const Expanded(
                      child: AboutSectionText(),
                    ),
                    if (constraints.maxWidth > 900) // Show ExperienceCard only on wider screens
                      const ExperienceCard(numOfExp: '02'),
                  ],
                ),
              if (constraints.maxWidth <= 600) // Show AboutTextWithSign on smaller screens
                const AboutTextWithSign(),
              const SizedBox(
                height: kDefaultPadding * 3,
              ),
              if (constraints.maxWidth <= 900) // Show ExperienceCard only on smaller screens
                const ExperienceCard(numOfExp: '02'),
              const AboutSectionText(), // Always show AboutSectionText
            ],
          );
        },
      ),
    );
  }
}
