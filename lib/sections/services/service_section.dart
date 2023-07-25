import 'package:flutter/material.dart';
import 'package:portfolio_in_flutter/constants/constants.dart';
import 'package:portfolio_in_flutter/models/service.dart';

import '../../components/section_title.dart';
import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1200),
      child: Column(
        children: [
          const SectionTitle(
            color: Color(0xFFFF0000),
            subtile: 'My Strong Arenas',
            title: 'Service Offerings',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(services.length, (index) => ServiceCard(index: index))
          ),
        ],
      ),
    );
  }
}

