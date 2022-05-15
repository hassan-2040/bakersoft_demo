import 'package:bakersoft_demo/core/common_product_features/domain/models/product.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/repositories/favourite_products_repository.dart';

class CheckIsFavourite {
  final FavouriteProductsRepository favouriteProductsRepository;

  CheckIsFavourite({ required this.favouriteProductsRepository,});

  bool call(Product product) => favouriteProductsRepository.checkIsFavourite(product);
}