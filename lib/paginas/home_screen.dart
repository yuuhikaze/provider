import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_2_provider/provider/user_provider.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: Text(
            context.watch<MyuserProvider>().username,
            style: TextStyle(fontSize: 50.0),
          ),
        ));
  }
}

