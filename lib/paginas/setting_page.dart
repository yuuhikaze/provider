import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_3_riverpod/provider/user_provider.dart';

class Configuraciones extends ConsumerWidget {
  const Configuraciones({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) { //WidgetRef ref permite acceder a los proveedores de Riverpod dentro del widget.
    final userNameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Configuraciones')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           // Text('Nombre Actual: ${ref.watch(userProvider)}', //ref.watch(provider) escucha cambios en el proveedor y reconstruye el widget automáticamente
           Text('Nombre Actual: ${ref.watch(userProvider).nombre}',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            TextField(
              controller: userNameController,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                //ref.read(userProvider.notifier).cambiarNombre(userNameController.text);   Solo para String
                ref.read(userProvider.notifier).cambiarNombre(Usuario(nombre: userNameController.text, edad: 20));
                userNameController.clear();
              },
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}