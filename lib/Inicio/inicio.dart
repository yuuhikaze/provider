import 'package:flutter/material.dart';
import 'package:flutter_2_provider/paginas/home_screen.dart';
import 'package:flutter_2_provider/paginas/setting_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int idx = 0;

  List<Widget> pages = [
    MyHome(),
    MySettings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Providers'),
      ),
      body: pages[idx],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
        currentIndex: idx,
        onTap: (value) {
          setState(() {
            idx = value;
          });
        },
      ),
    );
  }
}

