part of 'favourite_products_bloc.dart';

@freezed
class FavouriteProductsState with _$FavouriteProductsState {
  const factory FavouriteProductsState.initial() = _Initial;
  const factory FavouriteProductsState.loading() = _Loading;
  const factory FavouriteProductsState.success({
    @Default([]) List<Product> favouriteProducts,
  }) = _Success;
  const factory FavouriteProductsState.failure(String message) = _Failure;
  const factory FavouriteProductsState.addProductToFavouriteSuccess() = _AddProductToFavouriteSuccess;
  const factory FavouriteProductsState.removeProductFromFavouriteSuccess() = _RemoveProductFromFavouriteSuccess;
}
