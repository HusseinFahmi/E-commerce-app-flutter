import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // get access to the cart
    final cart = context
        .watch<Shop>()
        .cart;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,

      appBar: AppBar(
        title: Text('Cart Page'),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        elevation: 0,
      ),

      body: Expanded(
        child: ListView.builder(
            itemCount: cart.length,
            itemBuilder: (context, index) {


            }),
      ),
    );
  }
}
