import 'package:flutter/material.dart';

class CartItems extends ChangeNotifier {
  int cartItems = 0;

  //Increment
  void increment() {
    cartItems++;

    notifyListeners();
  }

  //decrement
  void decrement() {
    if (cartItems <= 1) {
    } else {
      cartItems--;
    }
    notifyListeners();
  }
}
