import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_3_riverpod/provider/user_provider.dart';
import 'package:flutter_3_riverpod/provider/favorite_product_provider.dart';

class Configuraciones extends ConsumerWidget {
  const Configuraciones({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //WidgetRef ref permite acceder a los proveedores de Riverpod dentro del widget.
    final userNameController = TextEditingController();
    final favoriteProduct = ref.watch(favoriteProductProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Configuraciones')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Mostrar producto favorito
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue[200]!, width: 2),
              ),
              child: Row(
                children: [
                  const Icon(Icons.favorite, color: Colors.red, size: 24),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      favoriteProduct != null
                          ? 'Producto favorito: ${favoriteProduct.title}'
                          : 'No hay producto favorito seleccionado',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Divider(thickness: 2),
            const SizedBox(height: 20),
            // Sección original de cambiar nombre
            Text(
              'Nombre Actual: ${ref.watch(userProvider).nombre}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: userNameController,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                ref
                    .read(userProvider.notifier)
                    .cambiarNombre(
                      Usuario(nombre: userNameController.text, edad: 20),
                    );
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
