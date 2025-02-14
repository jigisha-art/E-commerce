import '../../cart/models/cart_item_model.dart';

class ProductModel {
  final String id;
  final String name;
  final double price;
  final String description;
  final String imageUrl;
  final String category;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.category,
  });

  // Create a method to convert the product to a cart item
  CartItemModel toCartItem() {
    return CartItemModel(
      id: id,
      name: name,
      price: price,
      imageUrl: imageUrl,
    );
  }
}