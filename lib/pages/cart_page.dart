import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/dialog_box.dart';
import '../components/my_button.dart';
import '../models/product.dart';
import '../models/shop.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeItemFromCart(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) =>
          DialogBox(
            dialogMessage: 'Remove this item from your cart?',
            onCancel: () => Navigator.pop(context),
            cancelLabel: 'No',
            onConfirm: () {
              Navigator.pop(context);
              context.read<Shop>().removeFromCart(product);
            },
            confirmLabel: 'Yes',
          ),
    );
  }

  void payButtonPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(title: Text("User want's to pay ")),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context
        .watch<Shop>()
        .cart;

    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .surface,
      appBar: AppBar(
        title: const Text('Cart Page'),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: cart.isEmpty
                ? Center(child: Text('Cart is Empty'))
                : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                final item = cart[index];

                return Container(
                  decoration: BoxDecoration(
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  margin: EdgeInsets.only(bottom: 15, right: 20, left: 20),
                  child: ListTile(
                    title: Text(item.name),
                    subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
                    trailing: IconButton(
                      onPressed: () => removeItemFromCart(context, item),
                      icon: const Icon(Icons.remove),
                    ),
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MyButton(
              onTap: () => payButtonPressed(context),
              child: Text('PAY NOW'),
            ),
          ),
        ],
      ),
    );
  }
}
