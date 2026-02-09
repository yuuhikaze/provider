import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_3_riverpod/provider/user_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userName = ref.watch(userProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Página Principal')),
      body: Center(
        child: Text("Datos: ${userName.nombre}: ${userName.edad}",
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}