import 'package:bakersoft_demo/core/common_product_features/domain/models/product.dart';
import 'package:bakersoft_demo/features/favourite_products/data_sources/favourite_products_data_source.dart';

class FavouriteProductsRepository {
  final FavouriteProductsDataSource favouriteProductsDataSource;

  FavouriteProductsRepository({
    required this.favouriteProductsDataSource,
  });

  List<Product> _favouriteProducts = [];

  List<Product> get favouriteProducts => _favouriteProducts;

  void addToFavourite(Product product) {
    _favouriteProducts.add(product);
  }

  void removeFromFavourite(Product product) {
    _favouriteProducts.remove(product);
  }

  bool isFavourite(Product product) {
    return _favouriteProducts.contains(product);
  }

  Future<void> clearFavouriteProducts() async {
    try {
      _favouriteProducts.clear();
      await favouriteProductsDataSource.clearFavouriteProducts();
    } catch (_) {
      rethrow;
    }
  }

  Future<void> saveFavouriteProductsToLocalStrage() async {
    try {
      await favouriteProductsDataSource.saveFavouriteProductsToLocalStrage(
        _favouriteProducts,
      );
    } catch (_) {
      rethrow;
    }
  }

  Future<void> getFavouriteProductsFromLocalStrage() async {
    try {
      _favouriteProducts = await favouriteProductsDataSource
          .getFavouriteProductsFromLocalStrage();
    } catch (_) {
      rethrow;
    }
  }
}
