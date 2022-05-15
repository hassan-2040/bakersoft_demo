import 'package:bakersoft_demo/features/favourite_products/domain/repositories/favourite_products_repository.dart';

class SaveFavouriteProductsToStorage {
  final FavouriteProductsRepository favouriteProductsRepository;

  SaveFavouriteProductsToStorage({ required this.favouriteProductsRepository,});

  Future<void> call() async {
    try {
      await favouriteProductsRepository.saveFavouriteProductsToLocalStrage();
    } catch (_) {
      rethrow;
    }
  }
}