import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_3_riverpod/models/product.dart';

// Provider para manejar el producto favorito
class FavoriteProductNotifier extends StateNotifier<Product?> {
  FavoriteProductNotifier() : super(null);

  void setFavorite(Product product) {
    state = product;
  }

  void removeFavorite() {
    state = null;
  }

  void toggleFavorite(Product product) {
    if (state?.id == product.id) {
      state = null; // Si ya es favorito, lo quitamos
    } else {
      state = product; // Si no es favorito, lo establecemos
    }
  }
}

// StateNotifierProvider para el producto favorito
final favoriteProductProvider =
    StateNotifierProvider<FavoriteProductNotifier, Product?>((ref) {
      return FavoriteProductNotifier();
    });
