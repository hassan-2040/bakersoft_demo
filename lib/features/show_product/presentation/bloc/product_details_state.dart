part of 'product_details_bloc.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial({ @Default(1) int quantity}) = _Initial;
  const factory ProductDetailsState.addToCartSuccess() = _AddToCartSuccess;
}
