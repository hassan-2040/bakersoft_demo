import 'package:bakersoft_demo/features/favourite_products/data_sources/favourite_products_local_data_source.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';

class FavouriteProductsRepository {
  final FavouriteProductsLocalDataSource favouriteProductsLocalDataSource;

  FavouriteProductsRepository({
    required this.favouriteProductsLocalDataSource,
  });

  List<Product> _favouriteProducts = [];

  List<Product> get favouriteProducts => _favouriteProducts;

  void addToFavourite(Product product) {
    _favouriteProducts.add(product);
  }

  void removeFromFavourite(Product product) {
    _favouriteProducts.remove(product);
  }

  void clearFavouriteProducts() {
    _favouriteProducts.clear();
  }

  Future<void> loadSavedFavouriteProducts() async {
    try {
      _favouriteProducts = await favouriteProductsLocalDataSource
          .getFavouriteProductsFromLocalStrage();
    } catch (_) {
      rethrow;
    }
  }

  Future<void> saveFavouriteProducts() async {
    try {
      await favouriteProductsLocalDataSource.saveFavouriteProductsToLocalStrage(
        _favouriteProducts,
      );
    } catch (_) {
      rethrow;
    }
  }
}
