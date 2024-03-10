import 'package:flutter/material.dart';

import 'package:flutter_commerce/utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyBorderRadius = true,
    this.backgroundColor = Colors.transparent,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onTap,
    this.border,
    this.borderRadius = TSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyBorderRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onTap;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: applyBorderRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
        ),
        child: ClipRRect(
          borderRadius: applyBorderRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: isNetworkImage
              ? Image.network(imageUrl, fit: fit)
              : Image.asset(imageUrl, fit: fit),
        ),
      ),
    );
  }
}
