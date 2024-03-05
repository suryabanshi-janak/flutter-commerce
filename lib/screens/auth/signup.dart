import 'package:flutter/material.dart';

import 'package:flutter_commerce/widgets/forms/form_divider.dart';
import 'package:flutter_commerce/widgets/forms/signup_form.dart';
import 'package:flutter_commerce/widgets/forms/social_login.dart';

import 'package:flutter_commerce/utils/constants/sizes.dart';
import 'package:flutter_commerce/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SignupForm(),
              const FormDivider(text: TTexts.orSignUpWith),
              const SizedBox(height: TSizes.spaceBtwSections),
              const SocialLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
