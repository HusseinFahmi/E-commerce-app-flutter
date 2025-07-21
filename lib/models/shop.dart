import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/cupertino.dart';

class Shop extends ChangeNotifier {
  // products for sale

  final List<Product> _shop = [
    Product(name: 'Shirt',
        price: 99.99,
        description: 'first product',
        imageUrl: 'assets/images/image1.png'),
    Product(name: 'shoes',
        price: 89.99,
        description: 'second product',
        imageUrl: 'assets/images/image2.png'),
    Product(name: 'Sandal',
        price: 79.99,
        description: 'third product',
        imageUrl: 'assets/images/image3.png'),
    Product(name: 'bag',
        price: 89.49,
        description: 'fourth product',
        imageUrl: 'assets/images/image4.png'),
  ];

  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  // remove item from the cart
  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }
}
