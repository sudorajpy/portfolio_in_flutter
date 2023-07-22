import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constants/constants.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Wrap(
      runSpacing: kDefaultPadding*1.5,
      spacing: kDefaultPadding*2.5,
      children: [
        SizedBox(
          width: 470,
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Your Name",
              hintText: "Enter your name",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              
            ),
          ),
        ),
        SizedBox(
          width: 470,
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Email Address",
              hintText: "Enter your email address",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              
            ),
          ),
        ),
        SizedBox(
          width: 470,
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Project Type",
              hintText: "Select Project Type",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              
            ),
          ),
        ),
        SizedBox(
          width: 470,
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Project Budget",
              hintText: "Select Project Budget",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              
            ),
          ),
        ),
        SizedBox(
          width: 1000,
          child: TextFormField(
            // expands: true,
            // minLines: null,
            // maxLines: null,
            decoration: InputDecoration(
              labelText: "Description",
              hintText: "Write some description",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              
            ),
          ),
        ),
        SizedBox(width: kDefaultPadding*2,),
        Center(child: FittedBox(child: DefaultButton(text: 'Contact Me!', imgSrc: 'assets/images/contact_icon.png', press: (){}),),),
      ],
    ));
  }
}

