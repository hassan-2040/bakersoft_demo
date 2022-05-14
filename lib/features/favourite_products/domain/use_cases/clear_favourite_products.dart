import 'package:bakersoft_demo/features/favourite_products/domain/repositories/favourite_products_repository.dart';

class ClearFavouriteProducts {
  final FavouriteProductsRepository favouriteProductsRepository;

  ClearFavouriteProducts({
    required this.favouriteProductsRepository,
  });

  Future<void> call() async {
    try {
      await favouriteProductsRepository.clearFavouriteProducts();
    } catch (_) {
      rethrow;
    }
  }
}