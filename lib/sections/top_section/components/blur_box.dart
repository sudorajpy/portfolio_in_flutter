import 'package:flutter/material.dart';

import 'glass_content.dart';

class BlurBox extends StatelessWidget {
  const BlurBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        GlassContent(size: size),
        Spacer(flex: 3),],
        
    );
  }
}

