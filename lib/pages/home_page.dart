import 'package:flutter/material.dart';
import 'package:app_ban_giay/pages/search_page.dart';
import 'package:app_ban_giay/pages/shop_page.dart';
import 'package:app_ban_giay/pages/cart_page.dart';
import '../component/bottom_nav_dart.dart';
import '../models/shoe.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  // List of all shoes
  final List<Shoe> allShoes = [
    Shoe(name: 'Air Max', price: '120', imagePath: 'assets/air_max.png', description: ''),
    Shoe(name: 'Air Jordan', price: '150', imagePath: 'assets/air_jordan.png', description: ''),
    Shoe(name: 'Blazer', price: '100', imagePath: 'assets/blazer.png', description: ''),
  ];

  void _onTabChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  late final List<Widget> _pages = [
    const ShopPage(),
    SearchPage(allShoes: allShoes), // Pass the list of shoes here
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavDart(
        onTabChange: _onTabChanged,
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "NIKE SHOP",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                'lib/photo/Logo_NIKE.svg.png',
                color: Colors.white,
                height: 100,
              ),
            ),
            const ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Home', style: TextStyle(color: Colors.white)),
            ),
            const ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Settings', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: _pages[_selectedIndex],
      ),
    );
  }
}