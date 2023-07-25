import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constants/constants.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding*2),
      constraints: const BoxConstraints(maxWidth: 1200),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow]
      ),
      child: Row(
        children: [
          Image.asset('assets/images/email.png',height: 80,width: 80,),
          const Padding(padding: EdgeInsets.symmetric(vertical: kDefaultPadding,horizontal: kDefaultPadding),
          child: SizedBox(
            
            height: 80,

            child: VerticalDivider(),
          ),),
          const SizedBox(width: kDefaultPadding,),
          const Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Starting New Project',style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold),),
              SizedBox(height: kDefaultPadding/2,),
              Text('Get an estimate for the new project',style: TextStyle(fontWeight: FontWeight.w200),),
              
            ],
          ),
          ),
          DefaultButton(text: 'Hire Me!', imgSrc: 'assets/images/hand.png', press: (){})
        ],
      ),
    );
  }
}
