import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_commerce/utils/constants/colors.dart';

import 'package:flutter_commerce/utils/constants/image_strings.dart';
import 'package:flutter_commerce/utils/constants/sizes.dart';
import 'package:flutter_commerce/common/rounded_image.dart';

class PromoSlider extends StatefulWidget {
  const PromoSlider({super.key});

  @override
  State<PromoSlider> createState() => _PromoSliderState();
}

class _PromoSliderState extends State<PromoSlider> {
  var _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) {
                setState(() {
                  _activeIndex = index;
                });
              },
            ),
            items: const [
              RoundedImage(imageUrl: TImages.promoBanner1),
              RoundedImage(imageUrl: TImages.promoBanner2),
              RoundedImage(imageUrl: TImages.promoBanner3),
            ],
          ),
        ),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < 3; i++)
                Container(
                  height: 4,
                  width: 20,
                  margin: const EdgeInsets.only(right: TSizes.spaceBtwItems),
                  decoration: BoxDecoration(
                    color: _activeIndex == i ? TColors.primary : TColors.grey,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
