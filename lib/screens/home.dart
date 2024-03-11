import 'package:flutter/material.dart';
import 'package:flutter_commerce/widgets/vertical_product_card.dart';
import 'package:iconsax/iconsax.dart';

import 'package:flutter_commerce/widgets/promo_slider.dart';
import 'package:flutter_commerce/common/circular_container.dart';
import 'package:flutter_commerce/utils/constants/colors.dart';
import 'package:flutter_commerce/common/custom_app_bar.dart';
import 'package:flutter_commerce/utils/constants/sizes.dart';
import 'package:flutter_commerce/common/custom_curved_clipper.dart';
import 'package:flutter_commerce/utils/device/device_utility.dart';
import 'package:flutter_commerce/utils/constants/image_strings.dart';
import 'package:flutter_commerce/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
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
                              top: -150,
                              right: -250,
                              child: CircularContainer()),
                          const Positioned(
                              top: 100,
                              right: -300,
                              child: CircularContainer()),
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
                                actions: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Badge(
                                      label: Text(
                                        '2',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(color: TColors.white),
                                      ),
                                      backgroundColor: TColors.black,
                                      child: const Icon(
                                        Iconsax.shopping_bag,
                                        color: TColors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: TSizes.spaceBtwSections),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: TSizes.defaultSpace),
                                child: Container(
                                  width: TDeviceUtils.getScreenWidth(context),
                                  padding: const EdgeInsets.all(TSizes.md),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        TSizes.cardRadiusLg),
                                    border: Border.all(color: TColors.grey),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(Iconsax.search_normal,
                                          color: TColors.darkGrey),
                                      const SizedBox(
                                          width: TSizes.spaceBtwItems),
                                      Text(
                                        'Search in store',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: TSizes.spaceBtwSections),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: TSizes.defaultSpace),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Popular categories',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(color: TColors.white),
                                    ),
                                    const SizedBox(
                                        height: TSizes.spaceBtwItems),
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
                                                padding: const EdgeInsets.all(
                                                    TSizes.sm),
                                                decoration: BoxDecoration(
                                                  color: TColors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
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
                                                  height:
                                                      TSizes.spaceBtwItems / 2),
                                              SizedBox(
                                                width: 55,
                                                child: Text(
                                                  'Shoes',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelMedium,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
            ),
            const PromoSlider(),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: GridView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 288,
                  mainAxisSpacing: TSizes.gridViewSpacing,
                  crossAxisSpacing: TSizes.gridViewSpacing,
                ),
                itemBuilder: (_, index) => const VerticalProductCard(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
