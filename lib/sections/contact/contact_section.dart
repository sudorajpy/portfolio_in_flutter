import 'package:flutter/material.dart';
import 'package:portfolio_in_flutter/components/default_button.dart';
import 'package:portfolio_in_flutter/components/section_title.dart';
import 'package:portfolio_in_flutter/constants/constants.dart';

import 'components/contact_form.dart';
import 'components/social_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      
      decoration: const BoxDecoration(
        color:Color(0xFFE8F0F9),
        image: DecorationImage(
          image: AssetImage("assets/images/bg_img_2.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height:kDefaultPadding * 2,),
          SectionTitle(title: "Contact Me", subtile: "For project inquery and information", color:Color(0xFF07E24A),),
          ContactWidget(),
        ],
      ),
    );
  }
}

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1200),
      padding: const EdgeInsets.all(kDefaultPadding*3),
      margin: EdgeInsets.only(top: kDefaultPadding*2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCard(color: Color(0xFFD9FFFC), name: "Rajvinder Singh", imgUrl: "assets/images/skype.png",press: (){}),
              SocialCard(color: Color(0xFFE4FFC7), name: "Rajvinder Singh", imgUrl: "assets/images/whatsapp.png",press: (){}),
              SocialCard(color: Color(0xFFE8F0F9), name: "Rajvinder Singh", imgUrl: "assets/images/messanger.png",press: (){}),
            ],
          ),
          SizedBox(height: kDefaultPadding*2,),
          ContactForm()
        ],
      ),
    );
  }
}

