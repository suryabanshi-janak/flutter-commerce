import 'package:flutter/material.dart';
import 'package:flutter_commerce/common/styles/shadows.dart';
import 'package:iconsax/iconsax.dart';

import 'package:flutter_commerce/common/rounded_image.dart';
import 'package:flutter_commerce/utils/constants/colors.dart';
import 'package:flutter_commerce/utils/constants/image_strings.dart';
import 'package:flutter_commerce/utils/constants/sizes.dart';
import 'package:flutter_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter_commerce/common/product_title_text.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: isDark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          children: [
            Container(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: isDark ? TColors.dark : TColors.white,
                borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
              ),
              child: Stack(
                children: [
                  const RoundedImage(imageUrl: TImages.productImage1),
                  Positioned(
                    top: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: TSizes.xs,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(TSizes.sm),
                        color: TColors.secondary.withOpacity(0.8),
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: TColors.black),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: isDark
                            ? TColors.dark.withOpacity(0.8)
                            : TColors.light.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Iconsax.heart5,
                            color: Colors.red,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductTitleText(
                    text: 'Green color shoes',
                    isSmall: true,
                  ),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: TSizes.xs),
                      const Icon(
                        Iconsax.verify5,
                        color: TColors.primary,
                        size: TSizes.iconXs,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$35.5',
                        style: Theme.of(context).textTheme.headlineMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.borderRadiusLg),
                            bottomRight:
                                Radius.circular(TSizes.productImageRadius),
                          ),
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Iconsax.add,
                              color: TColors.white,
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
