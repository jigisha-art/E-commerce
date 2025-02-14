import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/product_model.dart';
import '../repositories/product_repository.dart';

// Product State
abstract class ProductState {}

class ProductInitialState extends ProductState {}

class ProductLoadingState extends ProductState {}

class ProductLoadedState extends ProductState {
  final List<ProductModel> products;

  ProductLoadedState(this.products);
}

class ProductErrorState extends ProductState {
  final String error;

  ProductErrorState(this.error);
}

// Product Event
abstract class ProductEvent {}

class LoadProductsEvent extends ProductEvent {}

// Product Bloc
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository productRepository;

  ProductBloc({required this.productRepository}) : super(ProductInitialState()) {
    on<LoadProductsEvent>(_onLoadProducts);
  }

  void _onLoadProducts(LoadProductsEvent event, Emitter<ProductState> emit) async {
    try {
      emit(ProductLoadingState());
      final products = productRepository.getProducts();
      emit(ProductLoadedState(products));
    } catch (e) {
      emit(ProductErrorState('Failed to load products'));
    }
  }
}