import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:flutter_commerce/widgets/circular_container.dart';
import 'package:flutter_commerce/utils/constants/colors.dart';
import 'package:flutter_commerce/widgets/custom_app_bar.dart';
import 'package:flutter_commerce/widgets/custom_curved_clipper.dart';
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
              child: Container(
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
                            )
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
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
