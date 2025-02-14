import 'package:equatable/equatable.dart';

class CartItemModel extends Equatable {
  final String id;
  final String name;
  final double price;
  final int quantity;
  final String imageUrl;

  const CartItemModel({
    required this.id,
    required this.name,
    required this.price,
    this.quantity = 1,
    required this.imageUrl,
  });

  // Calculated total price for this item
  double get totalPrice => price * quantity;

  // Method to create a copy of the item with optional parameter changes
  CartItemModel copyWith({
    String? id,
    String? name,
    double? price,
    int? quantity,
    String? imageUrl,
  }) {
    return CartItemModel(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  @override
  List<Object?> get props => [id, name, price, quantity, imageUrl];
}