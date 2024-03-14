import 'package:flutter/material.dart';
import 'package:flutter_commerce/utils/constants/colors.dart';
import 'package:flutter_commerce/utils/constants/sizes.dart';
import 'package:flutter_commerce/utils/helpers/helper_functions.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    required this.image,
    this.fit = BoxFit.cover,
    this.isNetworkImage = false,
    this.width = 56,
    this.height = 56,
    this.backgroundColor,
    this.padding = TSizes.sm,
  });

  final String image;
  final bool isNetworkImage;
  final BoxFit? fit;
  final double width, height, padding;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor ?? (isDark ? TColors.black : TColors.white),
      ),
      child: Center(
        child: Image(
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          fit: fit,
          color: isDark ? TColors.light : TColors.dark,
        ),
      ),
    );
  }
}
