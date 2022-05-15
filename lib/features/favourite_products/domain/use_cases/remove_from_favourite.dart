import 'package:bakersoft_demo/features/favourite_products/domain/repositories/favourite_products_repository.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';

class RemoveFromFavourite {
  final FavouriteProductsRepository favouriteProductsRepository;

  RemoveFromFavourite({ required this.favouriteProductsRepository,});

  Future<void> call(Product product) async {
    await favouriteProductsRepository.removeFromFavourite(product);
  }
}