import 'package:ecommerce_app/components/product_tittle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/my_drawer.dart';
import '../models/shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,

      appBar: AppBar(
        title: Text('Shop Page'),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        elevation: 0,

        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, 'cart_page'),
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),

      drawer: const MyDrawer(),

      body: ListView(
        children: [
          SizedBox(height: 25),
          // shop tittle
          Center(
            child: Text(
              'Pick a from a selected list of products',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),

          // product list
          SizedBox(
            height: 550,
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(20),
              itemBuilder: (context, index) {
                // get each individual product from shop
                final product = products[index];

                // return as a product UI
                return MyProductTittle(product: product);
              },
            ),
          ),

          SizedBox(height: 40),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Thank you for shopping with us\n'
                'We hope to see you again soon\n'
                'Eng. H U S S E I N',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
