import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_3_riverpod/paginas/home_page.dart';
import 'package:flutter_3_riverpod/paginas/setting_page.dart';

class MyInicio extends ConsumerStatefulWidget {
  const MyInicio({super.key});

  @override
  ConsumerState<MyInicio> createState() => _MyInicioState();
}

class _MyInicioState extends ConsumerState<MyInicio> {
  int idx = 0;

  final List<Widget> pages = const [HomePage(), Configuraciones()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Riverpod Example')),
      body: pages[idx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: idx,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Productos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (value) => setState(() => idx = value),
      ),
    );
  }
}
