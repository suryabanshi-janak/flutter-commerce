import 'package:flutter/material.dart';

import 'package:flutter_commerce/common/grid_layout.dart';
import 'package:flutter_commerce/common/section_heading.dart';
import 'package:flutter_commerce/widgets/home_clip_path.dart';
import 'package:flutter_commerce/widgets/vertical_product_card.dart';
import 'package:flutter_commerce/widgets/promo_slider.dart';
import 'package:flutter_commerce/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeClipPath(),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const SectionHeading(title: 'Popular products'),
                  GridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const VerticalProductCard(),
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
