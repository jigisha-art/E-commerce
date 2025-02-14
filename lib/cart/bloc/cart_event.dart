import 'package:equatable/equatable.dart';
import '../models/cart_item_model.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class AddToCartEvent extends CartEvent {
  final CartItemModel item;

  const AddToCartEvent(this.item);

  @override
  List<Object> get props => [item];
}

class RemoveFromCartEvent extends CartEvent {
  final String itemId;

  const RemoveFromCartEvent(this.itemId);

  @override
  List<Object> get props => [itemId];
}

class UpdateCartItemQuantityEvent extends CartEvent {
  final String itemId;
  final int newQuantity;

  const UpdateCartItemQuantityEvent(this.itemId, this.newQuantity);

  @override
  List<Object> get props => [itemId, newQuantity];
}

class ClearCartEvent extends CartEvent {}