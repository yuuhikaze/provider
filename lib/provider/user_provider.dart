import 'package:flutter_riverpod/flutter_riverpod.dart';
//  class MyuserProvider extends StateNotifier<String> {
//   MyuserProvider() :
//     super("Hola");
//   void cambiarNombre(String nuevoNombre) {
//     state = nuevoNombre;
//   }
// }
//snipper ->  stateNotifierProvider
// final userProvider = StateNotifierProvider<MyuserProvider, String>((ref) {
//   return MyuserProvider();
// });

//-------------------------------Si fueran mas parametros ------------------

// si se enviara mas que solo el nombre se deberia crear una clase:
class Usuario {
  final String nombre;
  final int edad;

  Usuario({this.nombre = " ", this.edad = 18});
}

class MyuserProvider extends StateNotifier<Usuario> {
  MyuserProvider({Usuario? usuario})
      :
        //constructor
        super(usuario ?? Usuario());

  void cambiarNombre(Usuario usuario) {
    state = Usuario(nombre: usuario.nombre, edad: state.edad);
  }

  void cambiarEdad(Usuario usuario) {
    state = Usuario(nombre: state.nombre, edad: usuario.edad);
  }
}

final userProvider = StateNotifierProvider<MyuserProvider, Usuario>((ref) {
  return MyuserProvider(usuario: Usuario(nombre: "Carlos", edad: 30));
});
