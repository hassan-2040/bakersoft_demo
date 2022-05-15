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

  Future<void> removeFromFavourite(Product product) async {
    _favouriteProducts.remove(product);
    if (_favouriteProducts.isEmpty) {
      await favouriteProductsLocalDataSource.clearFavouriteProducts();
    }
  }

  Future<void> clearFavouriteProducts() async {
    try {
      _favouriteProducts.clear();
      await favouriteProductsLocalDataSource.clearFavouriteProducts();
    } catch (_) {
      rethrow;
    }
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
