import 'package:flutter/material.dart';

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

