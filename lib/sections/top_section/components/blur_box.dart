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
        const Spacer(),
        GlassContent(size: size),
        const Spacer(flex: 3),],
        
    );
  }
}

