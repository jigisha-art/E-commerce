import '../models/product_model.dart';

class ProductRepository {
  List<ProductModel> getProducts() {
    return [
      ProductModel(
        id: '1',
        name: 'Smartphone',
        price: 599.99,
        description: 'Latest model smartphone with advanced features',
        imageUrl: 'https://example.com/smartphone.jpg',
        category: 'Electronics',
      ),
      ProductModel(
        id: '2',
        name: 'Laptop',
        price: 1299.99,
        description: 'High-performance laptop for professionals',
        imageUrl: 'https://example.com/laptop.jpg',
        category: 'Electronics',
      ),
      ProductModel(
        id: '3',
        name: 'Wireless Headphones',
        price: 199.99,
        description: 'Noise-cancelling wireless headphones',
        imageUrl: 'https://example.com/headphones.jpg',
        category: 'Audio',
      ),
      ProductModel(
        id: '4',
        name: 'Smartwatch',
        price: 249.99,
        description: 'Advanced smartwatch with health tracking',
        imageUrl: 'https://example.com/smartwatch.jpg',
        category: 'Wearables',
      ),
      ProductModel(
        id: '5',
        name: 'Bluetooth Speaker',
        price: 99.99,
        description: 'Portable bluetooth speaker with long battery life',
        imageUrl: 'https://example.com/speaker.jpg',
        category: 'Audio',
      ),
    ];
  }
}