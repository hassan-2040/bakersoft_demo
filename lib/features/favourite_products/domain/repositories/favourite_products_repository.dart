import 'package:bakersoft_demo/core/common_product_features/domain/models/product.dart';
import 'package:bakersoft_demo/features/favourite_products/data_sources/favourite_products_local_data_source.dart';

class FavouriteProductsRepository {
  final FavouriteProductsLocalDataSource favouriteProductsLocalDataSource;

  FavouriteProductsRepository({
    required this.favouriteProductsLocalDataSource,
  });

  List<Product> _favouriteProducts = [];

  void addToFavourite(Product product) {
    _favouriteProducts.add(product);
  }

  void removeFromFavourite(Product product) {
    _favouriteProducts.remove(product);
  }

  bool checkIsFavourite(Product product) {
    return _favouriteProducts.contains(product);
  }

  Future<void> clearFavouriteProducts() async {
    try {
      _favouriteProducts.clear();
      await favouriteProductsLocalDataSource.clearFavouriteProducts();
    } catch (_) {
      rethrow;
    }
  }

  Future<List<Product>> getFavouriteProducts() async {
    try {
      _favouriteProducts = await favouriteProductsLocalDataSource
          .getFavouriteProductsFromLocalStrage();
      return _favouriteProducts;
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
