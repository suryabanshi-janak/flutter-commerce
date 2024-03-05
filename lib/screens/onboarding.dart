import 'package:flutter/material.dart';
import 'package:flutter_commerce/screens/auth/login.dart';
import 'package:iconsax/iconsax.dart';

import 'package:flutter_commerce/widgets/onboarding_page.dart';

import 'package:flutter_commerce/utils/constants/image_strings.dart';
import 'package:flutter_commerce/utils/constants/text_strings.dart';
import 'package:flutter_commerce/utils/device/device_utility.dart';
import 'package:flutter_commerce/utils/constants/sizes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_commerce/utils/constants/colors.dart';
import 'package:flutter_commerce/utils/helpers/helper_functions.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _pageController = PageController();
  var _currentPageIndex = 0;

  void _updatePageIndicator(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  void _dotNavigationClick(int index) {
    _updatePageIndicator(index);
    _pageController.jumpTo(index.toDouble());
  }

  void _nextPage() {
    if (_currentPageIndex == 2) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const LoginScreen(),
        ),
      );
    } else {
      int page = _currentPageIndex + 1;
      _pageController.jumpToPage(page);
    }
  }

  void _skipPage() {
    _updatePageIndicator(2);
    _pageController.jumpToPage(2);
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: _updatePageIndicator,
            children: const [
              OnboardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          Positioned(
            top: TDeviceUtils.getAppBarHeight(),
            right: TSizes.defaultSpace,
            child: TextButton(
              onPressed: _skipPage,
              child: const Text('Skip'),
            ),
          ),
          Positioned(
            bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
            left: TSizes.defaultSpace,
            child: SmoothPageIndicator(
              controller: _pageController,
              onDotClicked: _dotNavigationClick,
              count: 3,
              effect: ExpandingDotsEffect(
                dotHeight: 6,
                activeDotColor: isDark ? TColors.light : TColors.dark,
              ),
            ),
          ),
          Positioned(
            right: TSizes.defaultSpace,
            bottom: TDeviceUtils.getBottomNavigationBarHeight(),
            child: ElevatedButton(
              onPressed: _nextPage,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: isDark ? TColors.primary : TColors.black,
              ),
              child: const Icon(Iconsax.arrow_right_3),
            ),
          ),
        ],
      ),
    );
  }
}
