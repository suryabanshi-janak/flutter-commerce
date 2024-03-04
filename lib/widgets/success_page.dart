import 'package:flutter/material.dart';

import 'package:flutter_commerce/common/styles/spacing_style.dart';
import 'package:flutter_commerce/utils/constants/sizes.dart';
import 'package:flutter_commerce/utils/constants/text_strings.dart';
import 'package:flutter_commerce/utils/device/device_utility.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onContinue,
  });

  final String image;
  final String title;
  final String subTitle;
  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 1.5,
          child: Column(
            children: [
              Image.asset(
                image,
                width: TDeviceUtils.getScreenWidth(context) * 0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onContinue,
                  child: const Text(TTexts.tContinue),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
