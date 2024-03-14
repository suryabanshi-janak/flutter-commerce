import 'package:flutter/material.dart';

import 'package:flutter_commerce/common/section_heading.dart';
import 'package:flutter_commerce/widgets/shopping_cart_button.dart';
import 'package:flutter_commerce/common/search_container.dart';
import 'package:flutter_commerce/common/circular_container.dart';
import 'package:flutter_commerce/common/custom_app_bar.dart';
import 'package:flutter_commerce/common/custom_curved_clipper.dart';
import 'package:flutter_commerce/utils/constants/colors.dart';
import 'package:flutter_commerce/utils/constants/image_strings.dart';
import 'package:flutter_commerce/utils/constants/sizes.dart';
import 'package:flutter_commerce/utils/constants/text_strings.dart';

class HomeClipPath extends StatelessWidget {
  const HomeClipPath({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedClipper(),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(0),
            color: TColors.primary,
            child: SizedBox(
              height: 400,
              child: Stack(
                children: [
                  const Positioned(
                      top: -150, right: -250, child: CircularContainer()),
                  const Positioned(
                      top: 100, right: -300, child: CircularContainer()),
                  Column(
                    children: [
                      CustomAppBar(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              TTexts.homeAppbarTitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(color: TColors.grey),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              TTexts.homeAppbarSubTitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(color: TColors.white),
                            ),
                          ],
                        ),
                        actions: const [
                          ShoppingCartButton(iconColor: TColors.white),
                        ],
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),
                      const SearchContainer(
                        text: 'Search in store',
                        showBackground: true,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: TSizes.defaultSpace),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SectionHeading(
                              title: 'Popular categories',
                              textColor: TColors.white,
                              showActions: false,
                            ),
                            const SizedBox(height: TSizes.spaceBtwItems),
                            SizedBox(
                              height: 80,
                              child: ListView.builder(
                                itemCount: 6,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (ctx, index) => Padding(
                                  padding: const EdgeInsets.only(
                                      right: TSizes.spaceBtwItems),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 56,
                                        height: 56,
                                        padding:
                                            const EdgeInsets.all(TSizes.sm),
                                        decoration: BoxDecoration(
                                          color: TColors.white,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            TImages.shoeIcon,
                                            fit: BoxFit.cover,
                                            color: TColors.dark,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                          height: TSizes.spaceBtwItems / 2),
                                      SizedBox(
                                        width: 55,
                                        child: Text(
                                          'Shoes',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
