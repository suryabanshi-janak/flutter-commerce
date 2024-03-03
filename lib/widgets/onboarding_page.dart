import 'package:flutter/material.dart';

import 'package:flutter_commerce/utils/constants/sizes.dart';
import 'package:flutter_commerce/utils/device/device_utility.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.title,
    required this.image,
    required this.subTitle,
  });

  final String title;
  final String image;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image.asset(
            image,
            width: TDeviceUtils.getScreenWidth(context) * 0.8,
            height: TDeviceUtils.getScreenHeight(context) * 0.6,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
