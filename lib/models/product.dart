class Product {
  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
  });

  final String id;
  final String title;
  final int price;
  final String image;
}

const List<Product> allProducts = [
  Product(id: '1', title: 'Comida Rapida', price: 10, image: 'assets/CR.png'),
  Product(id: '2', title: 'Frutas', price: 5, image: 'assets/frutas.png'),
  Product(id: '3', title: 'Combo', price: 10, image: 'assets/combo.png'),
];
