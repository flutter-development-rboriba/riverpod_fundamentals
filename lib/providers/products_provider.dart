import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/data/dummy_data.dart';
import 'package:riverpod_files/models/product.dart';

part 'products_provider.g.dart';

// final productsProvider = Provider(
//   (ref) {
//     return allProducts;
//   },
// );

// final reducedProductsProvider = Provider((ref) {
//   return allProducts.where((p) => p.price < 50).toList();
// });

@riverpod
List<Product> products(ref) {
  return allProducts;
}

@riverpod
List<Product> reducedProducts(ref) {
  return allProducts.where((p) => p.price < 50).toList();
}
