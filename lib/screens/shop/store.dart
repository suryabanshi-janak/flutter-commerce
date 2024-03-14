import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_commerce/common/circular_image.dart';
import 'package:flutter_commerce/common/custom_app_bar.dart';
import 'package:flutter_commerce/common/grid_layout.dart';
import 'package:flutter_commerce/common/search_container.dart';
import 'package:flutter_commerce/common/section_heading.dart';
import 'package:flutter_commerce/utils/constants/colors.dart';
import 'package:flutter_commerce/utils/constants/image_strings.dart';
import 'package:flutter_commerce/utils/constants/sizes.dart';
import 'package:flutter_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter_commerce/widgets/shopping_cart_button.dart';
import 'package:iconsax/iconsax.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: const [ShoppingCartButton()],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                floating: true,
                pinned: true,
                backgroundColor: isDark ? TColors.black : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const SearchContainer(
                        text: 'Search in the store',
                        showBorder: true,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      // Featured brands
                      const SectionHeading(title: 'Featured Brands'),
                      const SizedBox(height: TSizes.spaceBtwItems / 2),
                      GridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) => GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(TSizes.sm),
                            decoration: BoxDecoration(
                              border: Border.all(color: TColors.darkGrey),
                              borderRadius: BorderRadius.circular(TSizes.sm),
                            ),
                            child: Row(
                              children: [
                                const Flexible(
                                  child:
                                      CircularImage(image: TImages.clothIcon),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Nike',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          ),
                                          const SizedBox(width: TSizes.xs),
                                          const Icon(
                                            Iconsax.verify5,
                                            color: TColors.primary,
                                            size: TSizes.iconXs,
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '256 products',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container()),
    );
  }
}
