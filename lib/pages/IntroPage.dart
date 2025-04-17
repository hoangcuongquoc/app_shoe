import 'package:app_ban_giay/pages/home_page.dart';
import 'package:flutter/material.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.asset('lib/photo/Logo_NIKE.svg.png',
              height: 240,),
            ),
            const SizedBox(height:48 ),
            const Text(
              'Just Do It',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Text(
              'Welcome to Nike',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Homepage(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(25),
              
                child:
                const Center(
                    child: const Text(
                      'Shop Now',
                      style: TextStyle(color: Colors.white,

                        fontSize: 20,
                      ),
                    )
                ),
              
              
                ),
            ),

            
          ]
          ),
        ),



      ),
    );
  }
}
