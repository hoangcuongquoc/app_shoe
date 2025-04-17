import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavDart extends StatefulWidget {
  void Function(int)? onTabChange;
  BottomNavDart({super.key, required this.onTabChange});

  @override
  State<BottomNavDart> createState() => _BottomNavDartState();
}

class _BottomNavDartState extends State<BottomNavDart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 10),
        child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.black,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          gap: 8,
          tabBorderRadius: 20,
          onTabChange: (value) => widget.onTabChange!(value),
          tabs:[
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: 'Cart',
            ),
          ],

       )
    );
  }
}
