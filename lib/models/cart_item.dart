class CartItem {
  final String id;
  final String title;
  final String image;
  final String manufacturer;
  final int quality;
  final double price;

  CartItem({
    required this.id,
    required this.title,
    required this.manufacturer,
    required this.image,
    required this.quality,
    required this.price,
  });
}
