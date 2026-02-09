import 'package:flutter/material.dart';

class MyuserProvider extends ChangeNotifier {
  //Atributos
  int counter;
  bool isFavorite;

  //constructor
  MyuserProvider({this.counter = 0, this.isFavorite = false});

  //metodo
  void updateCounter({required int updateAmount}) {
    counter += updateAmount;
    notifyListeners();
  }

  void resetCounter() {
    counter = 0;
    notifyListeners();
  }

  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
