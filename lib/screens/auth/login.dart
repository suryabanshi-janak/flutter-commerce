import 'package:flutter/material.dart';

import 'package:flutter_commerce/widgets/forms/login_form.dart';
import 'package:flutter_commerce/widgets/forms/form_divider.dart';
import 'package:flutter_commerce/widgets/forms/social_login.dart';

import 'package:flutter_commerce/utils/constants/image_strings.dart';
import 'package:flutter_commerce/utils/constants/text_strings.dart';
import 'package:flutter_commerce/common/styles/spacing_style.dart';
import 'package:flutter_commerce/utils/constants/sizes.dart';
import 'package:flutter_commerce/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    isDark ? TImages.lightAppLogo : TImages.darkAppLogo,
                    height: 150,
                  ),
                  Text(
                    TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: TSizes.sm),
                  Text(
                    TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const LoginForm(),
              const FormDivider(text: TTexts.orSignInWith),
              const SizedBox(height: TSizes.spaceBtwSections),
              const SocialLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
