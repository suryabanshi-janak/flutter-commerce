import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:flutter_commerce/screens/home.dart';
import 'package:flutter_commerce/screens/profile.dart';
import 'package:flutter_commerce/screens/store.dart';
import 'package:flutter_commerce/screens/wishlist.dart';
import 'package:flutter_commerce/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishlistScreen(),
    const ProfileScreen()
  ];
  var _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        backgroundColor: isDark ? Colors.black : Colors.white,
        indicatorColor: isDark
            ? Colors.white.withOpacity(0.1)
            : Colors.black.withOpacity(0.1),
        selectedIndex: _selectedPageIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedPageIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
      ),
      body: screens[_selectedPageIndex],
    );
  }
}
