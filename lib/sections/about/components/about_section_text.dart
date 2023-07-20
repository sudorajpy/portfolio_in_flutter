import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        aboutText,
        style: TextStyle(
            fontWeight: FontWeight.w200, color: kTextColor, height: 2),
      ),
    );
  }
}
