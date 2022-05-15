import 'package:bakersoft_demo/core/common_product_features/domain/models/product.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/repositories/favourite_products_repository.dart';

class LoadSavedFavouriteProducts {
  final FavouriteProductsRepository favouriteProductsRepository;

  LoadSavedFavouriteProducts({
    required this.favouriteProductsRepository,
  });

  Future<void> call() async {
    try {
      return await favouriteProductsRepository.loadSavedFavouriteProducts();
    } catch (_) {
      rethrow;
    }
  }
}
