import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class Products with ChangeNotifier {
 
  final List<Product> _list = [];

  var showAllFavorites = false;
  List<Product> get list {
    return _list;
  }

  Future<void> fetchProducts() async {
    final url = Uri.parse(
        'https://soff-97172-default-rtdb.firebaseio.com/products.json');
    
    if (_list.isEmpty) {
      try {
        final response = await http.get(url);
        
        final extractedData = json.decode(response.body) as List<dynamic>;
        print('fucking works');
        for (var product in extractedData) {
          {
            _list.add(Product(
              id: product['id'],
              title: product['title'],
              rating: product["rating"],
              description: product["description"],
              color: product["color"],
              manufacturer: product["manufacturer"],
              upholsteryMaterial: product["upholsteryMaterial"],
              type: product["type"],
              crossMaterial: product["crossMaterial"],
              size: product["size"],
              maximumLoad: product["maximumLoad"],
              price: product["price"],
              imgUrl: product["imgUrl"],
              isAR: product["isAR"],
              arUrl: product["arUrl"],
            ));
          }
          ;
        }
        notifyListeners();
      } catch (error) {
        print(error);
      }
    }
  }

  List<Product> get favorites {
    return _list.where((product) => product.isFavorite).toList();
  }

  List<Product> get cartItems {
    return [...cartItems];
  }

  void addToCart(Product product) {
    cartItems.add(product);
  }

  void addProduct() {
    notifyListeners();
  }

  void add() {
    // _list.add(value);
    notifyListeners();
  }

  Product findId(String productId) {
    return _list.firstWhere((product) => product.id == productId);
  }
}
