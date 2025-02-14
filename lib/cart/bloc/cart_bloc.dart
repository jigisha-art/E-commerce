import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/cart_item_model.dart';
import 'cart_event.dart';
import 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitialState()) {
    on<AddToCartEvent>(_onAddToCart);
    on<RemoveFromCartEvent>(_onRemoveFromCart);
    on<UpdateCartItemQuantityEvent>(_onUpdateCartItemQuantity);
    on<ClearCartEvent>(_onClearCart);
  }

  void _onAddToCart(AddToCartEvent event, Emitter<CartState> emit) {
    final currentState = state;
    final updatedCartItems = List<CartItemModel>.from(
      currentState is CartLoadedState 
        ? currentState.cartItems 
        : []
    );
    
    // Check if item already exists in cart
    final existingItemIndex = updatedCartItems.indexWhere((item) => item.id == event.item.id);
    
    if (existingItemIndex != -1) {
      // Increase quantity if item exists
      updatedCartItems[existingItemIndex] = updatedCartItems[existingItemIndex].copyWith(
        quantity: updatedCartItems[existingItemIndex].quantity + 1,
      );
    } else {
      // Add new item to cart
      updatedCartItems.add(event.item);
    }

    emit(CartLoadedState(
      cartItems: updatedCartItems, 
      totalPrice: _calculateTotalPrice(updatedCartItems)
    ));
  }

  void _onRemoveFromCart(RemoveFromCartEvent event, Emitter<CartState> emit) {
    final currentState = state;
    final updatedCartItems = List<CartItemModel>.from(
      currentState is CartLoadedState 
        ? currentState.cartItems 
        : []
    )..removeWhere((item) => item.id == event.itemId);

    emit(CartLoadedState(
      cartItems: updatedCartItems, 
      totalPrice: _calculateTotalPrice(updatedCartItems)
    ));
  }

  void _onUpdateCartItemQuantity(UpdateCartItemQuantityEvent event, Emitter<CartState> emit) {
    final currentState = state;
    final updatedCartItems = List<CartItemModel>.from(
      currentState is CartLoadedState 
        ? currentState.cartItems 
        : []
    );
    
    final itemIndex = updatedCartItems.indexWhere((item) => item.id == event.itemId);
    
    if (itemIndex != -1) {
      if (event.newQuantity > 0) {
        updatedCartItems[itemIndex] = updatedCartItems[itemIndex].copyWith(
          quantity: event.newQuantity,
        );
      } else {
        updatedCartItems.removeAt(itemIndex);
      }
    }

    emit(CartLoadedState(
      cartItems: updatedCartItems, 
      totalPrice: _calculateTotalPrice(updatedCartItems)
    ));
  }

  void _onClearCart(ClearCartEvent event, Emitter<CartState> emit) {
    emit(CartInitialState());
  }

  double _calculateTotalPrice(List<CartItemModel> cartItems) {
    return cartItems.fold(0.0, (total, item) => total + (item.price * item.quantity));
  }
}