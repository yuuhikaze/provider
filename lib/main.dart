import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_2_provider/Inicio/inicio.dart';
import 'package:flutter_2_provider/provider/user_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MyuserProvider())
      ],
      child: MaterialApp(
        title: 'App Title',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
