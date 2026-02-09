import 'package:flutter/material.dart';
import 'package:flutter_3_riverpod/inicio/my_inicio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(const ProviderScope(child: MyApp())); //ProviderScope es el contenedor global que permite a los proveedores (Provider, StateNotifierProvider, etc.) ser accesibles en toda la aplicación.
}
//child MyApp -> Significa que MyApp y todos sus hijos pueden acceder a los proveedores de Riverpod.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Riverpod Example',
      home: MyInicio(),
    );
  }
}
