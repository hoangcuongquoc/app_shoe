import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemsFromCart() {
    // Logic to remove item from cart
    // This could involve calling a method from a provider or a state management solution
    // For example:
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.circular(10)),

      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
          leading: Image.asset(widget.shoe.imagePath),
      title: Text(widget.shoe.name),
          subtitle: Text(widget.shoe.price),
          trailing: IconButton(
            icon:  Icon(Icons.delete),
            onPressed:  removeItemsFromCart,


          ),


      ),
    );
  }
}
