import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
    this.buttonText = 'View all',
    this.textColor,
    this.showActions = true,
    this.onPressed,
  });

  final String title, buttonText;
  final Color? textColor;
  final bool showActions;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActions)
          TextButton(onPressed: onPressed, child: Text(buttonText)),
      ],
    );
  }
}
