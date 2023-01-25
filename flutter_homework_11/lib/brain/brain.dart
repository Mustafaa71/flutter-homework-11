class Product {
  final String name;
  final String image;
  final String price;

  Product({
    required this.name,
    required this.image,
    required this.price,
  });
}

class Data {
  static List<Product> products = [
    Product(
      name: 'Herbal Strategi Just Out Herbal Mosquito Repellent Room Spray',
      image: 'https://cdn.salla.sa/Aedxd/8D8EilcRfEvFAvtNwz5eh9828wz1xhZiOOyXHYiv.png',
      price: '27 SR',
    )
  ];
}
