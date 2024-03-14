import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:flutter_commerce/utils/constants/colors.dart';

class ShoppingCartButton extends StatelessWidget {
  const ShoppingCartButton({
    super.key,
    this.iconColor = TColors.dark,
  });

  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
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
        child: Icon(
          Iconsax.shopping_bag,
          color: iconColor,
        ),
      ),
    );
  }
}
