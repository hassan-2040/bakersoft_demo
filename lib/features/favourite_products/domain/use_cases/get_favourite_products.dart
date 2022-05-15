import 'package:bakersoft_demo/core/common_product_features/domain/models/product.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/repositories/favourite_products_repository.dart';

class GetFavouriteProducts {
  final FavouriteProductsRepository favouriteProductsRepository;

  GetFavouriteProducts({
    required this.favouriteProductsRepository,
  });

  Future<List<Product>> call() async {
    try {
      return await favouriteProductsRepository.getFavouriteProducts();
    } catch (_) {
      rethrow;
    }
  }
}
