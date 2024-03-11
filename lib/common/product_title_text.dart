import 'package:flutter/material.dart';

class ProductTitleText extends StatelessWidget {
  const ProductTitleText(
      {super.key,
      required this.text,
      this.isSmall = false,
      this.textAlign = TextAlign.start,
      this.maxLines = 2});

  final String text;
  final bool isSmall;
  final TextAlign textAlign;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isSmall
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
    );
  }
}
