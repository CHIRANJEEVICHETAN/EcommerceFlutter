
import 'package:avymart/features/customer/data/models/cart_item_model.dart';
import 'package:avymart/features/customer/data/models/product_model.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  double get totalPrice => _items.fold(
      0, (total, current) => total + (current.product.price * current.quantity));

  void add(Product product) {
    // Check if the product is already in the cart
    for (var item in _items) {
      if (item.product.name == product.name) {
        item.quantity++;
        notifyListeners();
        return;
      }
    }

    // If not, add it as a new item
    _items.add(CartItem(product: product));
    notifyListeners();
  }

  void remove(CartItem cartItem) {
    _items.remove(cartItem);
    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}
