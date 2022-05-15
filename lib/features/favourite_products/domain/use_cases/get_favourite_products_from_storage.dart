import 'package:bakersoft_demo/features/favourite_products/domain/repositories/favourite_products_repository.dart';

class GetFavouriteProductsFromStorage {
  final FavouriteProductsRepository favouriteProductsRepository;

  GetFavouriteProductsFromStorage({
    required this.favouriteProductsRepository,
  });

  Future<void> call() async {
    try {
      await favouriteProductsRepository.getFavouriteProductsFromLocalStrage();
    } catch (_) {
      rethrow;
    }
  }
}
