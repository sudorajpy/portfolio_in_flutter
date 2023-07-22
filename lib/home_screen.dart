import 'package:flutter/material.dart';
import 'package:portfolio_in_flutter/constants/constants.dart';
import 'package:portfolio_in_flutter/sections/about/about_section.dart';
import 'package:portfolio_in_flutter/sections/contact/contact_section.dart';
import 'package:portfolio_in_flutter/sections/feedback/feedback_section.dart';
import 'package:portfolio_in_flutter/sections/recent_work/recent_work_section.dart';
import 'package:portfolio_in_flutter/sections/services/service_section.dart';
import 'package:portfolio_in_flutter/sections/top_section/top_section.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height:kDefaultPadding * 2,),
            AboutSection(),
            // SizedBox(height: kDefaultPadding*2,),
            ServiceSection(),
            RecentWorkSection(),
            FeedbackSection(),
            SizedBox(height: kDefaultPadding*2,),
            ContactSection(),
            SizedBox(height: 500,)
          ],
        ),
      )
    );
  }
}