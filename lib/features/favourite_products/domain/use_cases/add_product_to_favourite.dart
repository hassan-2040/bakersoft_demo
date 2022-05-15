import 'package:bakersoft_demo/core/common_product_features/domain/models/product.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/repositories/favourite_products_repository.dart';

class AddProductToFavourite {
  final FavouriteProductsRepository favouriteProductsRepository;

  AddProductToFavourite({
    required this.favouriteProductsRepository,
  });

  void call(Product product) =>
      favouriteProductsRepository.addToFavourite(product);
}
