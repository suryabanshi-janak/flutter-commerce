import 'package:flutter/material.dart';

import 'package:flutter_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter_commerce/utils/constants/colors.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        Flexible(
          child: Divider(
            thickness: 0.5,
            color: isDark ? TColors.darkGrey : TColors.grey,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            thickness: 0.5,
            color: isDark ? TColors.darkGrey : TColors.grey,
            indent: 5,
            endIndent: 60,
          ),
        )
      ],
    );
  }
}
