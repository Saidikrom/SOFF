import 'package:flutter/material.dart';

import '../models/cart_item.dart';

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int itemsCount() {
    return items.length;
  }

  double get totalPrice {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price;
    });
    return total;
  }

  void addToCart(
    String productId,
    String title,
    String image,
    double price,
    String manufacturer,
  ) {
    if (_items.containsKey(productId)) {
      //
      _items.update(
        productId,
        (currentProduct) => CartItem(
          id: currentProduct.id,
          title: currentProduct.title,
          image: currentProduct.image,
          quality: currentProduct.quality + 1,
          price: currentProduct.price,
          manufacturer: currentProduct.manufacturer,
        ),
      );
    } else {
      _items.putIfAbsent(
        productId,
        () => CartItem(
          id: UniqueKey().toString(),
          title: title,
          image: image,
          quality: 1,
          price: price,
          manufacturer: manufacturer,
        ),
      );
    }
    notifyListeners();
  }

  void removeSingleItem(String id) {
    if (!_items.containsKey(id)) {
      return;
    }
    if (_items[id]!.quality > 1) {
      _items.update(
        id,
        (currentProduct) => CartItem(
          id: currentProduct.id,
          title: currentProduct.title,
          manufacturer: currentProduct.manufacturer,
          image: currentProduct.image,
          quality: currentProduct.quality - 1,
          price: currentProduct.price,
        ),
      );
      notifyListeners();
    }
  }

  removeItem(String id) {
    _items.remove(id);
    notifyListeners();
  }
}
