import 'package:flutter/material.dart';

const kTextColor = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: Color(0xFF0700B1).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// TextField dedign
final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

final kDefaultOutlineInputBorder = OutlineInputBorder(
  // Maybe flutter team need to fix it on web
  borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);

String aboutText =
    "I am a recent BCA graduate with valuable internships in Flipkart's supply chain and Gurugram Cyber Cell. These experiences have strengthened my skills in logistics, operations, and cybersecurity. Currently, I am learning Flutter, a cross-platform app development framework. With a strong academic background, practical experience, and a passion for technology, I am seeking challenging opportunities to contribute to an organization's success. Please reach out if you are looking for a dedicated professional who can drive business growth through innovative solutions.";
