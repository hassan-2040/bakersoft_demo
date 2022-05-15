
import 'package:bakersoft_demo/features/favourite_products/domain/repositories/favourite_products_repository.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';

class AddProductToFavourite {
  final FavouriteProductsRepository favouriteProductsRepository;

  AddProductToFavourite({
    required this.favouriteProductsRepository,
  });

  void call(Product product) =>
      favouriteProductsRepository.addToFavourite(product);
}
