import 'package:app_ban_giay/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../component/shoe_tile.dart';
import '../models/shoe.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    // Add the shoe to the cart
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    // Show a snackbar to confirm the addition
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('Shoe Added'),
      content: Text('Check your cart.'),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: value.getShoeShop().length, // Dynamically get the length
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoeShop()[index]; // Fetch the shoe object
                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe),// Pass the shoe object to ShoeTile
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Divider(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}