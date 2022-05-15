import 'package:bakersoft_demo/features/favourite_products/domain/repositories/favourite_products_repository.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';

class GetFavouriteProducts {
  final FavouriteProductsRepository favouriteProductsRepository;

  GetFavouriteProducts({
    required this.favouriteProductsRepository,
  });

  List<Product> call() {
    try {
      return favouriteProductsRepository.favouriteProducts;
    } catch (_) {
      rethrow;
    }
  }
}
