import 'package:flutter/material.dart';

class MyuserProvider extends ChangeNotifier {
  //Atributos
  int counter;

  //constructor
  MyuserProvider({this.counter = 0});

  //metodo
  void updateCounter({required int updateAmount}) {
    counter += updateAmount;
    notifyListeners();
  }

  void resetCounter() {
    counter = 0;
    notifyListeners();
  }
}
