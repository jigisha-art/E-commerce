import 'package:equatable/equatable.dart';
import '../models/cart_item_model.dart';

abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

class CartInitialState extends CartState {}

class CartLoadedState extends CartState {
  final List<CartItemModel> cartItems;
  final double totalPrice;

  const CartLoadedState({
    required this.cartItems,
    required this.totalPrice,
  });

  @override
  List<Object> get props => [cartItems, totalPrice];

  CartLoadedState copyWith({
    List<CartItemModel>? cartItems,
    double? totalPrice,
  }) {
    return CartLoadedState(
      cartItems: cartItems ?? this.cartItems,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }
}