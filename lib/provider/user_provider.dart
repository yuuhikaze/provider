import 'package:flutter/material.dart';

class Notifier extends ChangeNotifier {

}

class MyuserProvider extends ChangeNotifier {
//Atributos
  String username;

//constructor
  MyuserProvider({this.username = "Hola"});

//metodo
  void cambiarNombre({required String nuevouserName}) {
    username = nuevouserName;
    notifyListeners();
  }
}

