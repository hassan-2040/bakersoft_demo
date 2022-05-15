import 'package:bakersoft_demo/features/favourite_products/domain/repositories/favourite_products_repository.dart';

class SaveFavouriteProducts {
  final FavouriteProductsRepository favouriteProductsRepository;

  SaveFavouriteProducts({ required this.favouriteProductsRepository,});

  Future<void> call() async {
    try {
      await favouriteProductsRepository.saveFavouriteProducts();
    } catch (_) {
      rethrow;
    }
  }
}