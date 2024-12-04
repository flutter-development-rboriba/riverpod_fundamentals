import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/data/dummy_data.dart';

final productsProvider = Provider(
  (ref) {
    return allProducts;
  },
);

final reducedProductsProvider = Provider((ref) {
  return allProducts.where((p) => p.price < 50).toList();
});
