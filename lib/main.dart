import 'package:app_ban_giay/pages/IntroPage.dart';
import 'package:app_ban_giay/models/cart.dart'; // Import Cart class
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import provider package

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(), // Provide Cart instance
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shoe Shop',
        home: const Intropage(), // Ensure IntroPage is defined
      ),
    );
  }
}