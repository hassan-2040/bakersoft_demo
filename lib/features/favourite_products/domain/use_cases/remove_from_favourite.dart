import 'package:bakersoft_demo/core/common_product_features/domain/models/product.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/repositories/favourite_products_repository.dart';

class RemoveFromFavourite {
  final FavouriteProductsRepository favouriteProductsRepository;

  RemoveFromFavourite({ required this.favouriteProductsRepository,});

  Future<void> call(Product product) async {
    await favouriteProductsRepository.removeFromFavourite(product);
  }
}