import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../constants/constants.dart';


class GlassContent extends StatelessWidget {
  const GlassContent({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding:const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2, ),
          constraints: BoxConstraints(
            maxWidth: 1100,
            maxHeight: size.height * 0.7,
          ),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello There, I am',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Rajvinder \nSingh',
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
              Text('Flutter Developer | UI/UX Designer',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
