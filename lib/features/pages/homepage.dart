import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tablet_application/features/pages/add_to_cart.dart';
import 'package:flutter_tablet_application/features/pages/products.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;

  final screens = [
    const ProductsPage(),
    const AddToCart(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            NavigationRail(
              leading: Image.asset(
                "assets/images/logo.png",
                height: 100,
                width: 100,
              ),
              extended: true,
              minExtendedWidth: 130.w,
              destinations: [
                NavigationRailDestination(
                  icon: Image.asset(
                    "assets/images/logo.png",
                    height: 50,
                    width: 50,
                  ),
                  label: Text(
                    "Products",
                    style: TextStyle(
                      fontSize: 30.sp,
                    ),
                  ),
                ),
                NavigationRailDestination(
                  icon: const Icon(
                    Icons.shopping_cart,
                  ),
                  label: Text(
                    "Add to cart",
                    style: TextStyle(
                      fontSize: 30.sp,
                    ),
                  ),
                ),
              ],
              onDestinationSelected: (index) {
                setState(
                  () {
                    selectedIndex = index;
                  },
                );
              },
              selectedIconTheme: const IconThemeData(
                color: Colors.black,
              ),
              selectedLabelTextStyle: const TextStyle(
                color: Colors.black,
              ),
              selectedIndex: selectedIndex,
            ),
            Expanded(
              child: screens[selectedIndex],
            ),
          ],
        ),
      ),
    );
  }
}
