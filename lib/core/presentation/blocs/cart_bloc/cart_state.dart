part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial({
    @Default(0) int cartItemsCount,
    @Default(0.0) double totalPrice,
    @Default({}) Map<Product, int> cartItems,
  }) = _Initial;
}
