import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_commerce/widgets/circular_container.dart';
import 'package:flutter_commerce/utils/constants/colors.dart';
import 'package:flutter_commerce/widgets/custom_curved_clipper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CustomCurvedClipper(),
              child: Container(
                padding: const EdgeInsets.all(0),
                color: TColors.primary,
                child: const SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(
                          top: -150, right: -250, child: CircularContainer()),
                      Positioned(
                          top: 100, right: -300, child: CircularContainer()),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
