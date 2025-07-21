import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../models/shop.dart';
import 'dialog_box.dart';

class MyProductTittle extends StatelessWidget {
  final Product product;

  MyProductTittle({super.key, required this.product});

  void addToCart(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => DialogBox(
        dialogMessage: 'Add this item to your cart?',
        onCancel: () => Navigator.pop(context),
        cancelLabel: 'No',
        onConfirm: () {
          Navigator.pop(context);
          context.read<Shop>().addToCart(product);
        },
        confirmLabel: 'Yes',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),

      width: 300,

      padding: EdgeInsets.all(25),
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.all(25),
                  child: Icon(Icons.favorite),
                ),
              ),

              SizedBox(height: 25),

              Text(
                product.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              Text(
                product.description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              SizedBox(height: 25),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$${product.price}'),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () => addToCart(context),
                  icon: Icon(Icons.add),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
