import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
        name: 'Long Black',
        price: "80.00",
        imagePath: "lib/images/coffee-cup.png"),
    Coffee(
      name: 'Kopeko Brown',
      price: "60.00",
      imagePath: "lib/images/coffee.png",
    ),
    Coffee(
        name: 'Great Taste White',
        price: "100.00",
        imagePath: "lib/images/coffeee.png"),
    Coffee(
        name: 'Kape Blanca',
        price: "120.00",
        imagePath: "lib/images/latte.png"),
  ];

  List<Coffee> _userCart = [];

  List<Coffee> get coffeeShop => _shop;

  List<Coffee> get userCart => _userCart;

  // add item to cart

  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
