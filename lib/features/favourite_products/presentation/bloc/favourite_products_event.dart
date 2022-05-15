part of 'favourite_products_bloc.dart';

@freezed
class FavouriteProductsEvent with _$FavouriteProductsEvent {
  const factory FavouriteProductsEvent.get() = _Get;
  const factory FavouriteProductsEvent.addToFavourite({ required Product product,}) = _AddToFavourite;
  const factory FavouriteProductsEvent.removeFromFavourite({ required Product product,}) = _RemoveFromFavourite;
  const factory FavouriteProductsEvent.clearFavouriteProducts() = _ClearFavouriteProducts;
  const factory FavouriteProductsEvent.saveFavouriteProducts() = _SaveFavouriteProducts;
}