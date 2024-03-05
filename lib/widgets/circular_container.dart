import 'package:flutter/material.dart';

import 'package:flutter_commerce/utils/constants/colors.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.borderRadius = 400,
    this.padding = 0,
  });

  final double? width;
  final double? height;
  final double? padding;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius!),
        color: TColors.white.withOpacity(0.1),
      ),
    );
  }
}
