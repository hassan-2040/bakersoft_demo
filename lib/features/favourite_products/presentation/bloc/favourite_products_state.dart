part of 'favourite_products_bloc.dart';

@freezed
class FavouriteProductsState with _$FavouriteProductsState {
  const factory FavouriteProductsState.loading() = _Loading;
  const factory FavouriteProductsState.success({
    @Default([]) List<Product> favouriteProducts,
  }) = _Success;
  const factory FavouriteProductsState.failure(String message) = _Failure;
}
